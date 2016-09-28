import Foundation
import ObjectMapper
open class AttachmentInfo: Mappable {
    // Link to custom data attachment
    open var `uri`: String?
    // Type of custom data attachment, see also MIME Types
    open var `contentType`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `contentType` <- map["contentType"]
    }
}
