
public enum Theme: String, Codable {
    case light
    case dark
}

public struct ChatUiContainer {
    public var id: String? = nil
    public var height: String? = nil
    public var width: String? = nil
    
    public init(id: String? = nil, height: String? = nil, width: String? = nil) {
        self.id = id
        self.height = height
        self.width = width
    }
}

public enum Authentication: Codable {
    case unsecured
    case authParams(params: AnyCodable)
}

public struct UserProfile {
    public let displayName: String
    public let displayPicture: String
    
    public init(displayName: String, displayPicture: String) {
        self.displayName = displayName
        self.displayPicture = displayPicture
    }
}

public struct ChatUIConfiguration {
    public let widgetId: String
    public let username: String
    public var locale: String? = nil
    public var container: ChatUiContainer? = nil
    public var theme: Theme? = nil
    public var authentication: Authentication? = nil
    public var profile: UserProfile? = nil
    
    public init(widgetId: String, username: String, locale: String? = nil, container: ChatUiContainer? = nil, theme: Theme? = nil, authentication: Authentication? = nil, profile: UserProfile? = nil) {
        self.widgetId = widgetId
        self.username = username
        self.locale = locale
        self.container = container
        self.theme = theme
        self.authentication = authentication
        self.profile = profile
    }
}
