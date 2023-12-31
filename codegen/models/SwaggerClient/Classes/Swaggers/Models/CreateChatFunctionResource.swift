//
// CreateChatFunctionResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CreateChatFunctionResource: Codable {

    public var type: String
    public var _description: String?
    public var initializeAsynchronously: Bool
    public var name: String

    public init(type: String, _description: String? = nil, initializeAsynchronously: Bool, name: String) {
        self.type = type
        self._description = _description
        self.initializeAsynchronously = initializeAsynchronously
        self.name = name
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case _description = "description"
        case initializeAsynchronously
        case name
    }

}
