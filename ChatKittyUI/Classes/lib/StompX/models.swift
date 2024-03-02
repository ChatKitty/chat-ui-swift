final class FlexStompXMessage<T: Codable>: Codable {
    let id: String?
    let type: String
    let payload: T
    
    init(id: String?, type: String, payload: T) {
        self.id = id
        self.type = type
        self.payload = payload
    }
}

final class FlexStompXEmptyMessage: Codable {
    let id: String?
    let type: String
    
    init(id: String?, type: String) {
        self.id = id
        self.type = type
    }
}

enum FlexStompXEventType: String {
    case connectSuccess = "stompx:connect.success"
    case connectFailure = "stompx:connect.error"
    case relaySuccess = "stompx:relay.success"
    case relayError = "stompx:relay.error"
    case eventPublished = "stompx:event.published"
    case topicSubscribed = "stompx:topic.subscribed"
    case actionSent = "stompx:action.sent"
    case actionSuccess = "stompx:action.success"
    case actionError = "stompx:action.error"
    case streamSuccess = "stompx:stream.success"
    case streamError = "stompx:stream.error"
    case streamProgressStarted = "stompx:stream.progress.started"
    case streamProgressPublished = "stompx:stream.progress.published"
    case streamProgressCompleted = "stompx:stream.progress.completed"
    case streamProgressFailed = "stompx:stream.progress.failed"
    case streamProgressCancelled = "stompx:stream.progress.cancelled"
}

final class StompXResource: Codable {
    let resource: AnyCodable
    
    init(resource: AnyCodable) {
        self.resource = resource
    }
}

final class StompXRelayPayload: Codable {
    let parameters: [String : Bool]?
    let destination: String
}

final class StompXSubscribePayload: Codable {
    let topic: String
}

final class ConnectPayload: Codable {
    let user: AnyCodable
    let write: String?
    let read: String?
    
    init(user: AnyCodable, write: String?, read: String?) {
        self.user = user
        self.write = write
        self.read = read
    }
}

final class ChatKittyGrant: Codable {
    let grant: String
}

