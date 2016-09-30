import Foundation
import ObjectMapper
import Alamofire
open class UnconditionalForwardingInfo: Mappable {
    // Phone number to which the call is forwarded
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
