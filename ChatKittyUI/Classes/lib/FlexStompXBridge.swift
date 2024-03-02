import FlexHybridApp

final class FlexStompXBridge: StompXBridge {
    private let component: FlexComponent
    
    init(component: FlexComponent) {
        component.setBaseUrl(kChatUiBaseUtl)
        self.component = component
    }
    
    func onMessage<T: Codable>(id: String?,
                               type: FlexStompXEventType,
                               payload: T) {
        component.evalFlexFunc("onmessage",
                               sendData: FlexStompXMessage(id: id,
                                                           type: type.rawValue,
                                                           payload: payload))
    }
    
    func onMessage(id: String?,
                   type: FlexStompXEventType) {
        component.evalFlexFunc("onmessage",
                               sendData: FlexStompXEmptyMessage(id: id,
                                                           type: type.rawValue))
    }
}
