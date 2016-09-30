import Foundation
import ObjectMapper
import Alamofire
open class AddonInfo: Mappable {
    // Addon identifier. For HardPhones of certain types, which are compatible with this addon identifier
    open var `id`: String?
    // Number of addons. For HardPhones of certain types, which are compatible with such addon identifier
    open var `count`: Int?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `count` <- map["count"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
