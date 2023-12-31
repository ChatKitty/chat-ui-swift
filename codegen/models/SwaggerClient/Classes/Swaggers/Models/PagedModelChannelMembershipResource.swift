//
// PagedModelChannelMembershipResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PagedModelChannelMembershipResource: Codable {

    public var embedded: PagedModelChannelMembershipResourceEmbedded?
    public var page: PageMetadata?
    public var links: Links?

    public init(embedded: PagedModelChannelMembershipResourceEmbedded? = nil, page: PageMetadata? = nil, links: Links? = nil) {
        self.embedded = embedded
        self.page = page
        self.links = links
    }

    public enum CodingKeys: String, CodingKey { 
        case embedded = "_embedded"
        case page
        case links = "_links"
    }

}
