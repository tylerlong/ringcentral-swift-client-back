import Foundation
import ObjectMapper
open class MessageAttachmentInfo: Mappable {
    // Internal identifier of a message attachment
    open var `id`: String?
    // Canonical URI of a message attachment
    open var `uri`: String?
    // Type of message attachment
    open var `type`: String?
    // MIME type for a given attachment, for instance 'audio/wav'
    open var `contentType`: String?
    // Voicemail only Duration of the voicemail in seconds
    open var `vmDuration`: Int?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `type` <- map["type"]
        `contentType` <- map["contentType"]
        `vmDuration` <- map["vmDuration"]
    }
}