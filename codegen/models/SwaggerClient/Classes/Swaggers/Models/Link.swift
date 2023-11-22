//
// Link.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Link: Codable {

    public var href: String?
    public var hreflang: String?
    public var title: String?
    public var type: String?
    public var deprecation: String?
    public var profile: String?
    public var name: String?
    public var templated: Bool?

    public init(href: String? = nil, hreflang: String? = nil, title: String? = nil, type: String? = nil, deprecation: String? = nil, profile: String? = nil, name: String? = nil, templated: Bool? = nil) {
        self.href = href
        self.hreflang = hreflang
        self.title = title
        self.type = type
        self.deprecation = deprecation
        self.profile = profile
        self.name = name
        self.templated = templated
    }


}
