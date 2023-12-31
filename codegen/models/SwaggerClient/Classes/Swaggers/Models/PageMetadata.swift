//
// PageMetadata.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PageMetadata: Codable {

    public var number: Int64?
    public var size: Int64?
    public var totalElements: Int64?
    public var totalPages: Int64?

    public init(number: Int64? = nil, size: Int64? = nil, totalElements: Int64? = nil, totalPages: Int64? = nil) {
        self.number = number
        self.size = size
        self.totalElements = totalElements
        self.totalPages = totalPages
    }


}
