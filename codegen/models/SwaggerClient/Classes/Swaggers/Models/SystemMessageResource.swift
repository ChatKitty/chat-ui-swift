//
// SystemMessageResource.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** The message that was sent */

public struct SystemMessageResource: Codable {

    public enum ModelType: String, Codable { 
        case text = "TEXT"
        case file = "FILE"
        case systemText = "SYSTEM_TEXT"
        case systemFile = "SYSTEM_FILE"
    }
    /** The type of this message */
    public var type: ModelType
    /** 64-bit integer identifier associated with this resource */
    public var _id: Int64
    /** The ID of the channel this message belongs to */
    public var channelId: Int64
    /** The time this message was created */
    public var createdTime: Date
    /** Optional string to associate this message with other messages. Can be used to group messages into a gallery */
    public var groupTag: String?
    /** The time this message was last edited */
    public var lastEditedTime: Date?
    /** The nested thread level of this message */
    public var nestedLevel: Int
    /** Custom data associated with this message */
    public var properties: AnyCodable
    /** Reactions to this message */
    public var reactions: [MessageReactionsSummaryProperties]?
    /** The number of replies to this message */
    public var repliesCount: Int64?
    public var links: Links?

    public init(type: ModelType, _id: Int64, channelId: Int64, createdTime: Date, groupTag: String? = nil, lastEditedTime: Date? = nil, nestedLevel: Int, properties: AnyCodable, reactions: [MessageReactionsSummaryProperties]? = nil, repliesCount: Int64? = nil, links: Links? = nil) {
        self.type = type
        self._id = _id
        self.channelId = channelId
        self.createdTime = createdTime
        self.groupTag = groupTag
        self.lastEditedTime = lastEditedTime
        self.nestedLevel = nestedLevel
        self.properties = properties
        self.reactions = reactions
        self.repliesCount = repliesCount
        self.links = links
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case _id = "id"
        case channelId
        case createdTime
        case groupTag
        case lastEditedTime
        case nestedLevel
        case properties
        case reactions
        case repliesCount
        case links = "_links"
    }

}
