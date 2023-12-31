//
// CreateFileMessageResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CreateFileMessageResource: Codable {

    public var type: String
    /** Optional string to associate this message with other messages. Can be used to group messages into a gallery */
    public var groupTag: String?
    /** Custom data associated with this message */
    public var properties: AnyCodable?
    public var user: Any?
    public var file: CreateExternalFileProperties

    public init(type: String, groupTag: String? = nil, properties: AnyCodable? = nil, user: Any? = nil, file: CreateExternalFileProperties) {
        self.type = type
        self.groupTag = groupTag
        self.properties = properties
        self.user = user
        self.file = file
    }


}
