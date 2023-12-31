//
// FileImport.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** External file properties */

public struct FileImport: Codable {

    /** The mime type of this file */
    public var contentType: String
    /** Unique value generated by the client which ChatKitty uses to recognize subsequent retries of the same request. Optional but recommended */
    public var idempotencyKey: String?
    /** The file name */
    public var name: String
    /** The size of this file in bytes */
    public var size: Int64
    /** The file URL */
    public var url: String

    public init(contentType: String, idempotencyKey: String? = nil, name: String, size: Int64, url: String) {
        self.contentType = contentType
        self.idempotencyKey = idempotencyKey
        self.name = name
        self.size = size
        self.url = url
    }


}
