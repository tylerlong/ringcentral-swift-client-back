import Foundation
import ObjectMapper
import Alamofire
open class Page: Mappable {
    // Canonical URI for the page
    open var `uri`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
