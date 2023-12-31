//
// CreateChatFunctionVersionResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CreateChatFunctionVersionResource: Codable {

    /** JavaScript/TypeScript code that runs when this function is executed */
    public var handlerScript: String

    public init(handlerScript: String) {
        self.handlerScript = handlerScript
    }


}
