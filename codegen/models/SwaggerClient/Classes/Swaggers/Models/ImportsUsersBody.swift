//
// ImportsUsersBody.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ImportsUsersBody: Codable {

    /** JSON array file with users */
    public var file: Data

    public init(file: Data) {
        self.file = file
    }


}