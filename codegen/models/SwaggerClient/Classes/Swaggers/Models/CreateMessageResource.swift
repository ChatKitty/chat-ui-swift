//
// CreateMessageResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CreateMessageResource: Codable {

    public var type: String
    /** Optional string to associate this message with other messages. Can be used to group messages into a gallery */
    public var groupTag: String?
    /** Custom data associated with this message */
    public var properties: AnyCodable?
    public var user: OneOfCreateMessageResourceUser?

    public init(type: String, groupTag: String? = nil, properties: AnyCodable? = nil, user: OneOfCreateMessageResourceUser? = nil) {
        self.type = type
        self.groupTag = groupTag
        self.properties = properties
        self.user = user
    }


}
