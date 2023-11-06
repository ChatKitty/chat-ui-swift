
public enum Theme: String {
    case light
    case dark
}

public struct ChatUIConfiguration {
    public let widgetId: String
    public let username: String
    public var locale: String?
    public var theme: Theme?
}
