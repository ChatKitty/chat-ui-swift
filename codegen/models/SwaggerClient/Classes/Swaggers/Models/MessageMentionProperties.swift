//
// MessageMentionProperties.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Mentions in this message */

public struct MessageMentionProperties: Codable {

    public enum ModelType: String, Codable { 
        case channel = "CHANNEL"
        case user = "USER"
    }
    /** The type of this message mention */
    public var type: ModelType
    /** The ending position of this mention reference inside its message */
    public var endPosition: Int
    /** The starting position of this mention reference inside its message */
    public var startPosition: Int
    /** The literal text referencing the mentioned entity inside the message */
    public var tag: String

    public init(type: ModelType, endPosition: Int, startPosition: Int, tag: String) {
        self.type = type
        self.endPosition = endPosition
        self.startPosition = startPosition
        self.tag = tag
    }


}