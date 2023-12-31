//
// CreateChannelGenericEventResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CreateChannelGenericEventResource: Codable {

    /** Custom type of this event */
    public var type: String
    /** Custom data associated with this event */
    public var properties: AnyCodable

    public init(type: String, properties: AnyCodable) {
        self.type = type
        self.properties = properties
    }


}
