import Foundation
import ObjectMapper
import Alamofire
open class AnsweringRuleInfo_CalleeInfo: Mappable {
    // Called phone number
    open var `phoneNumber`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["phoneNumber"] = self.phoneNumber
        return result
    }
}
