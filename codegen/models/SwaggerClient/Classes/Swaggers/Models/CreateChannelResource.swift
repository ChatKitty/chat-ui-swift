//
// CreateChannelResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CreateChannelResource: Codable {

    public var type: String
    public var creator: OneOfCreateChannelResourceCreator?
    /** List of user references of members of this channel */
    public var members: [OneOfCreateChannelResourceMembersItems]?
    /** Custom data associated with this channel */
    public var properties: AnyCodable?

    public init(type: String, creator: OneOfCreateChannelResourceCreator? = nil, members: [OneOfCreateChannelResourceMembersItems]? = nil, properties: AnyCodable? = nil) {
        self.type = type
        self.creator = creator
        self.members = members
        self.properties = properties
    }


}