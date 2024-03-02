import UIKit

public final class ChatUIView: UIView {
    // MARK: Private members
    private let configuration: ChatUIConfiguration
    private let components: ChatUIComponents?
    private let flexComponent = FlexComponent()
    private lazy var bridge: ChatUIBridge = FlexChatUIBridge(component: flexComponent)
    private lazy var stompXBridge: StompXBridge = FlexStompXBridge(component: flexComponent)

    // MARK: UI Components
    private lazy var flexWebView: FlexWebView = {
        let view = FlexWebView(frame: .zero, component: flexComponent)
        addSubview(view)
        return view
    }()
    
    // MARK: Initializers
    
    public init(configuration: ChatUIConfiguration,
                components: ChatUIComponents? = nil) {
        self.configuration = configuration
        self.components = components
        super.init(frame: .zero)
        build()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let stompX = StompXImpl(configuration: StompXConfiguration(isSecure: true,
                                                                       host: "api.chatkitty.com",
                                                                       isDebug: false))
    
    // MARK: Private
    
    private func build() {
        flexWebView.translatesAutoresizingMaskIntoConstraints = false
        if #available(iOS 16.4, *) {
            flexWebView.isInspectable = true
        }
        NSLayoutConstraint.activate([
            flexWebView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            flexWebView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            flexWebView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            flexWebView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
        
        let options = InitializeOptions(
            username: configuration.username,
            theme: configuration.theme,
            apiConnectionType: "standalone"
        )
        
        bridge.onChatUiConnected { [weak self] in
            self?.bridge.initialize(options: options)
        }
        
        bridge.onChatMounted { [weak self] context in
            self?.components?.onMounted?(context)
        }
        
        bridge.onChatHeaderSelected { [weak self] channel in
            self?.components?.onHeaderSelected?(channel)
        }
        
        bridge.onChatMenuActionSelected { [weak self] action in
            self?.components?.onMenuActionSelected?(action)
        }
        
        bridge.onPostMessage { event in
            switch event.type {
            case "stompx:connect":
                var writeGrant: String? = nil
                var readGrant: String? = nil
                
                self.stompX.relayResource(request: StompXRelayResourceRequest<AnyCodable>(
                    destination: "/application/v1/user.relay",
                    onSuccess: { user in
                    self.stompX.relayResource(request: StompXRelayResourceRequest<ChatKittyGrant>(
                        destination: "/application/v1/user.write_file_access_grant.relay",
                        onSuccess: { write in
                            writeGrant = write?.grant
                            self.stompX.relayResource(request: StompXRelayResourceRequest<ChatKittyGrant>(
                                destination: "/application/v1/user.read_file_access_grant.relay",
                                onSuccess: { read in
                                readGrant = read?.grant
                                    if let user {
                                        self.stompXBridge.onMessage(id: nil,
                                                                    type: .connectSuccess,
                                                                    payload: ConnectPayload(user: user,
                                                                                            write: writeGrant,
                                                                                            read: readGrant))
                                    }
                            }, onError: { error in
                                print(error.localizedDescription)
                            }))
                        }, onError: { error in
                            print(error.localizedDescription)
                        }))
                }, onError: { error in
                    print(error.localizedDescription)
                }))
            case "stompx:resource.relay":
                if let relayPayload = event.payload?.synthesize(to: StompXRelayPayload.self) {
                    self.stompX.relayResource(request: StompXRelayResourceRequest<AnyCodable>(
                        destination: relayPayload.destination,
                        parameters: relayPayload.parameters?.mapValues { $0 ? "true" : "false" } ?? [:],
                        onSuccess: { model in
                            guard let model else {
                                return
                            }
                            self.stompXBridge.onMessage(id: event.id,
                                                        type: .relaySuccess,
                                                        payload: StompXResource(resource: model))
                    }, onError: { error in
                        print(error.localizedDescription)
                    }))
                }
            case "stompx:topic.subscribe":
                break
//                if let subscribePayload = event.payload?.synthesize(to: StompXSubscribePayload.self) {
//                    let _ = self.stompX.listenToTopic(request: StompXListenToTopicRequest(topic: subscribePayload.topic, onSuccess: {
//                        self.stompXBridge.onMessage(id: event.id ?? "unknown",
//                                                    type: .topicSubscribed)
//                    }))
//                }
            default:
                print("OnPostMesage \(event.type)")
                break
            }
        }
        
        flexWebView.load(URLRequest(url: URL(string: "\(kChatUiBaseUtl)/chat?widget_id=\(configuration.widgetId)&environment=production")!))
        
        stompX.connect(request: StompXConnectRequest(apiKey: configuration.apiKey, 
                                                     username: configuration.username,
                                                     authParams: nil,
                                                     onConnected: {
        }, onConnectionLost: {
            print("onConnectionLost")
        }, onConnectionResumed: {
            print("onConnectionResumed")
        }, onError: { error in
            print(error.localizedDescription)
        }))
    }
}
