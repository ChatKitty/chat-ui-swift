//
// IdMembersBody1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct IdMembersBody1: Codable {

    /** JSON array file with user references to be added as members */
    public var file: Data

    public init(file: Data) {
        self.file = file
    }


}