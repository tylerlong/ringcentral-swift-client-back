import Foundation
import ObjectMapper
open class LegInfo_ExtensionInfo: Mappable {
    // Internal identifier of an extension
    open var `id`: Int?
    // Canonical URI of an extension
    open var `uri`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
    }
}
