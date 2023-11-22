//
// ApplicationSettingsProperties.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ApplicationSettingsProperties: Codable {

    public enum GuestUsers: String, Codable { 
        case disabled = "DISABLED"
        case enabled = "ENABLED"
    }
    public enum UserCreatedChannels: String, Codable { 
        case disabled = "DISABLED"
        case enabled = "ENABLED"
    }
    /** Toggle state of this settings option */
    public var guestUsers: GuestUsers
    /** Toggle state of this settings option */
    public var userCreatedChannels: UserCreatedChannels

    public init(guestUsers: GuestUsers, userCreatedChannels: UserCreatedChannels) {
        self.guestUsers = guestUsers
        self.userCreatedChannels = userCreatedChannels
    }


}
