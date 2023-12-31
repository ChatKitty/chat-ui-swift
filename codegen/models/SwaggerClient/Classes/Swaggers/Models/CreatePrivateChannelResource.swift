//
// CreatePrivateChannelResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Creates a private channel */

public struct CreatePrivateChannelResource: Codable {

    public var type: String
    public var creator: Any?
    /** List of user references of members of this channel */
    public var members: [Any]?
    /** Custom data associated with this channel */
    public var properties: AnyCodable?
    /** The unique name of this channel used to reference the channel. If absent defaults to a random UUID */
    public var name: String?
    /** Human readable name of this channel shown to users. If absent defaults to the channel name */
    public var displayName: String?

    public init(type: String, creator: Any? = nil, members: [Any]? = nil, properties: AnyCodable? = nil, name: String? = nil, displayName: String? = nil) {
        self.type = type
        self.creator = creator
        self.members = members
        self.properties = properties
        self.name = name
        self.displayName = displayName
    }


}
