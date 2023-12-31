//
// CreateDirectChannelResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Creates a direct channel */

public struct CreateDirectChannelResource: Codable {

    public var type: String
    public var creator: Any?
    /** List of user references of members of this channel */
    public var members: [Any]
    /** Custom data associated with this channel */
    public var properties: AnyCodable?

    public init(type: String, creator: Any? = nil, members: [Any], properties: AnyCodable? = nil) {
        self.type = type
        self.creator = creator
        self.members = members
        self.properties = properties
    }


}
