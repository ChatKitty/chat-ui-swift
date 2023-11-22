//
// ChannelInviteResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ChannelInviteResource: Codable {

    /** The time this invite was created */
    public var createdTime: Date
    public var links: Links?

    public init(createdTime: Date, links: Links? = nil) {
        self.createdTime = createdTime
        self.links = links
    }

    public enum CodingKeys: String, CodingKey { 
        case createdTime
        case links = "_links"
    }

}
