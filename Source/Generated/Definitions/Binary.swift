import Foundation
import ObjectMapper
open class Binary: Mappable {
    // Required. Binary data.
    open var `data`: Data?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `data` <- map["data"]
    }
}