//
// ChatUserImport.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ChatUserImport: Codable {

    /** Human readable name of this user. Shown to other users */
    public var displayName: String
    public var displayPicture: FileImport?
    /** True if this user was created by a guest user session */
    public var guest: Bool
    /** Unique value generated by the client which ChatKitty uses to recognize subsequent retries of the same request. Optional but recommended */
    public var idempotencyKey: String?
    /** The unique name used to identify this user across ChatKitty. Also known as username */
    public var name: String
    /** Custom data associated with this user */
    public var properties: AnyCodable

    public init(displayName: String, displayPicture: FileImport? = nil, guest: Bool, idempotencyKey: String? = nil, name: String, properties: AnyCodable) {
        self.displayName = displayName
        self.displayPicture = displayPicture
        self.guest = guest
        self.idempotencyKey = idempotencyKey
        self.name = name
        self.properties = properties
    }


}
