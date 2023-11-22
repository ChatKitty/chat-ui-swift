//
// GroupChannelImport.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct GroupChannelImport: Codable {

    /** Username of the user who created this channel */
    public var creator: String?
    /** Human readable name of this channel shown to users. If absent defaults to the channel name */
    public var displayName: String?
    /** Unique value generated by the client which ChatKitty uses to recognize subsequent retries of the same request. Optional but recommended */
    public var idempotencyKey: String?
    /** List of usernames of members of this channel */
    public var members: [String]
    /** The unique name of this channel used to reference the channel. If absent defaults to a random UUID */
    public var name: String?
    /** Custom data associated with this channel */
    public var properties: AnyCodable?

    public init(creator: String? = nil, displayName: String? = nil, idempotencyKey: String? = nil, members: [String], name: String? = nil, properties: AnyCodable? = nil) {
        self.creator = creator
        self.displayName = displayName
        self.idempotencyKey = idempotencyKey
        self.members = members
        self.name = name
        self.properties = properties
    }


}
