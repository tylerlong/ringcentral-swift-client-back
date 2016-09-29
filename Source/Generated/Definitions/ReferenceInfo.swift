import Foundation
import ObjectMapper
open class ReferenceInfo: Mappable {
    // Non-RC identifier of an extension
    open var `ref`: String?
    // Type of external identifier
    open var `type`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `ref` <- map["ref"]
        `type` <- map["type"]
    }
}