//
// Presence.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Presence: Codable {

    public var status: String?
    public var online: Bool?

    public init(status: String? = nil, online: Bool? = nil) {
        self.status = status
        self.online = online
    }


}
