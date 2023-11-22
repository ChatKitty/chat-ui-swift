//
// ChatUserSentChatUserMessageNotificationData.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Sent when a user sends a message */

public struct ChatUserSentChatUserMessageNotificationData: Codable {

    public var type: String
    /** The ID channel the message was sent. Deprecated: Use the channel property of this notification */
    public var channelId: Int64
    public var message: ChatUserMessageResource

    public init(type: String, channelId: Int64, message: ChatUserMessageResource) {
        self.type = type
        self.channelId = channelId
        self.message = message
    }


}
