import UIKit
import FlexHybridApp

public final class ChatUIView: UIView {
    // MARK: Private members
    private let configuration: ChatUIConfiguration
    private let components: ChatUIComponents?
    private let flexComponent = FlexComponent()
    private lazy var bridge: ChatUIBridge = FlexChatUIBridge(component: flexComponent)
    
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
        NSLayoutConstraint.activate([
            flexWebView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            flexWebView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            flexWebView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            flexWebView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
        
        let options = InitializeOptions(
            username: configuration.username,
            theme: configuration.theme
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
        
        flexWebView.load(URLRequest(url: URL(string: "https://ui.chatkitty.com/chat?widget_id=\(configuration.widgetId)")!))
        
        stompX.connect(request: StompXConnectRequest(apiKey: configuration.apiKey, 
                                                     username: configuration.username,
                                                     authParams: nil,
                                                     onConnected: {
            print("Connected")
        }, onConnectionLost: {
            print("onConnectionLost")
        }, onConnectionResumed: {
            print("onConnectionLost")
        }, onError: { error in
            print("Error")
        }))
    }
}
