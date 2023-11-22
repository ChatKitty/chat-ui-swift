//
// ChatUserMentionedChatUserNotificationData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Sent when a user mentions a user in a message */

public struct ChatUserMentionedChatUserNotificationData: Codable {

    public var type: String
    /** The ID of the channel the mentioning message was sent. Deprecated: Use the channel property of this notification */
    public var channelId: Int64
    public var mentionedUser: ChatUserResource
    public var message: TextMessageResource

    public init(type: String, channelId: Int64, mentionedUser: ChatUserResource, message: TextMessageResource) {
        self.type = type
        self.channelId = channelId
        self.mentionedUser = mentionedUser
        self.message = message
    }


}