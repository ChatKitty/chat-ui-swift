import UIKit
import FlexHybridApp

public final class ChatKittyUIView: UIView {
    // MARK: Private members
    private let configuration: ChatUIConfiguration
    private let flexComponent = FlexComponent()
    private lazy var bridge: ChatUIBridge = FlexChatUIBridge(component: flexComponent)
    
    // MARK: UI Components
    private lazy var flexWebView: FlexWebView = {
        let view = FlexWebView(frame: .zero, component: flexComponent)
        addSubview(view)
        return view
    }()
    
    // MARK: Initializers
    
    public init(configuration: ChatUIConfiguration) {
        self.configuration = configuration
        super.init(frame: .zero)
        build()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
            theme: "dark"
        )
        bridge.onChatUiConnected {
            self.bridge.initialize(options: options)
        }
        
        flexWebView.load(URLRequest(url: URL(string: "https://ui.chatkitty.com/chat?widget_id=\(configuration.widgetId)")!))
    }
}
