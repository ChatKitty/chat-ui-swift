//
// ImportsMessagesBody.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ImportsMessagesBody: Codable {

    /** JSON array file with messages */
    public var file: Data

    public init(file: Data) {
        self.file = file
    }


}
