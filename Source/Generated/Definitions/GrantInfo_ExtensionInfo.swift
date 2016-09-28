import Foundation
import ObjectMapper
open class GrantInfo_ExtensionInfo: Mappable {
    // Internal identifier of an extension
    open var `id`: String?
    // Canonical URI of an extension
    open var `uri`: String?
    // Extension short number (usually 3 or 4 digits)
    open var `extensionNumber`: String?
    // Extension type
    open var `type`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]
        `type` <- map["type"]
    }
}
