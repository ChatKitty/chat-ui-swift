//
// ChatUserPresenceProperties.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Presence status of this user */

public struct ChatUserPresenceProperties: Codable {

    /** True if this user has an active user session */
    public var online: Bool
    /** The availability status of this user */
    public var status: String

    public init(online: Bool, status: String) {
        self.online = online
        self.status = status
    }


}
