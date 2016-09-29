import Foundation
import ObjectMapper
open class Binary: Mappable {
    // Required. Binary data.
    open var `data`: NSData?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `data` <- map["data"]
    }
}
