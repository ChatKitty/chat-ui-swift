//
// ChannelPropertiesPatch.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ChannelPropertiesPatch: Codable {

    /** Updates human readable name of this channel */
    public var displayName: String?
    /** Updates custom data associated with this channel */
    public var properties: AnyCodable?

    public init(displayName: String? = nil, properties: AnyCodable? = nil) {
        self.displayName = displayName
        self.properties = properties
    }


}
