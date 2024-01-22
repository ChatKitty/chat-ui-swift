import FlexHybridApp

final class FlexChatUIBridge: ChatUIBridge {
    
    private let component: FlexComponent
    
    init(component: FlexComponent) {
        component.setBaseUrl("https://ui.chatkitty.com")
        self.component = component
    }
    
    // MARK: ChatUIBridge
    
    func initialize(options: InitializeOptions) {
        component.evalFlexFunc("initialize", sendData: options)
    }
    
    func onChatUiConnected(_ onChatUiConnected: @escaping () -> Void) {
        component.setInterface("onChatUiConnected") { _ in
            onChatUiConnected()
        }
    }
    
    func onChatMounted(_ onChatMounted: (ChatMountedOptions) -> Void) {
        component.setInterface("onChatMounted") { args in
            // TODO: Implementation
        }
    }
    
    func onChatHeaderSelected(_ onChatHeaderSelected: @escaping (Channel) -> Void) {
        component.setInterface("onChatHeaderSelected") { args in
            // TODO: Implementation
        }
    }
    
    func onChatMenuActionSelected(_ onChatMenuActionSelected: @escaping () -> Void) {
        component.setInterface("onChatMenuActionSelected") { args in
            // TODO: Implementation
        }
    }
    
    func onChatNotificationReceived(_ onChatNotificationReceived: @escaping () -> Void) {
        component.setInterface("onChatNotificationReceived") { args in
            // TODO: Implementation
        }
    }
}
