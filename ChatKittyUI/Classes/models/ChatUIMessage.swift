import Foundation

final class ChatUIMessage: Codable {
    let type: String
    let id: String?
    let payload: AnyCodable?
}
