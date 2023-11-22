//
// ApplicationResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ApplicationResource: Codable {

    /** 64-bit integer identifier associated with this resource */
    public var _id: Int64
    /** ISO date-time this application was created */
    public var createdTime: Date
    /** Primary API key assigned to this application */
    public var key: String
    /** Custom properties attached to this application */
    public var properties: AnyCodable
    public var links: Links?

    public init(_id: Int64, createdTime: Date, key: String, properties: AnyCodable, links: Links? = nil) {
        self._id = _id
        self.createdTime = createdTime
        self.key = key
        self.properties = properties
        self.links = links
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case createdTime
        case key
        case properties
        case links = "_links"
    }

}