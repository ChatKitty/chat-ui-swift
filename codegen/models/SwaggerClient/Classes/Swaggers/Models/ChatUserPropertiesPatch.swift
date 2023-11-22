//
// ChatUserPropertiesPatch.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ChatUserPropertiesPatch: Codable {

    /** Updates human readable name of this user */
    public var displayName: String?
    /** If true, changes this user to a guest user. If false requires this user be authenticated */
    public var isGuest: Bool?
    public var presence: ChatUserPresencePropertiesPatch?
    /** Updates custom data associated with this user */
    public var properties: AnyCodable?

    public init(displayName: String? = nil, isGuest: Bool? = nil, presence: ChatUserPresencePropertiesPatch? = nil, properties: AnyCodable? = nil) {
        self.displayName = displayName
        self.isGuest = isGuest
        self.presence = presence
        self.properties = properties
    }


}
