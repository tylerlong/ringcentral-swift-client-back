import Foundation
import ObjectMapper
import Alamofire
open class CustomGreetingInfo_AnsweringRuleInfo: Mappable {
    // Internal identifier of an answering rule
    open var `id`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
