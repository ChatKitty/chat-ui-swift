//
// MessageReactionsSummaryProperties.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Reactions to this message */

public struct MessageReactionsSummaryProperties: Codable {

    /** The number of users that reacted with this emoji */
    public var count: Int64
    public var emoji: EmojiProperties
    /** The users that reacted with this emoji */
    public var users: [ChatUserProperties]

    public init(count: Int64, emoji: EmojiProperties, users: [ChatUserProperties]) {
        self.count = count
        self.emoji = emoji
        self.users = users
    }


}
