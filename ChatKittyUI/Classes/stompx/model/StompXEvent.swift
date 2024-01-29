import Foundation

public class StompXEvent<T: Codable>: Codable {
    public let type: String
    public let version: String
    public let resource: T
}
