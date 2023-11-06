protocol ChatUIBridge {
    
    func initialize(options: InitializeOptions)
    
    func onChatUiConnected(_ onChatUiConnected: @escaping () -> Void)
    
    func onChatMounted(_ onChatMounted: @escaping (ChatMountedOptions) -> Void)
}
