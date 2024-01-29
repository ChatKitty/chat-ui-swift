import Foundation

final class RtmEvent<T: Codable>: Codable {
    let type: String
    let version: String
    let resource: T
}
