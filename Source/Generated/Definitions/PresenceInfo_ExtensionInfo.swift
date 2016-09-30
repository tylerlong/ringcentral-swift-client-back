import Foundation
import ObjectMapper
import Alamofire
open class PresenceInfo_ExtensionInfo: Mappable {
    // Internal identifier of an extension
    open var `id`: String?
    // Canonical URI of an extension
    open var `uri`: String?
    // Extension number (usually 3 or 4 digits)
    open var `extensionNumber`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `extensionNumber` <- map["extensionNumber"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
