
public enum Theme: String {
    case light
    case dark
}

public struct ChatUIConfiguration {
    public let widgetId: String
    public let username: String
    public var locale: String? = nil
    public var theme: Theme? = nil
    
    public init(widgetId: String, username: String, locale: String? = nil, theme: Theme? = nil) {
        self.widgetId = widgetId
        self.username = username
        self.locale = locale
        self.theme = theme
    }
}
