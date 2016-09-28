import Foundation
import ObjectMapper
open class Page: Mappable {
    // Canonical URI for the page
    open var `uri`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
    }
}
