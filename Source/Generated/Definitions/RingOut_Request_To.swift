import Foundation
import ObjectMapper
import Alamofire
open class RingOut_Request_To: Mappable {
    // Phone number in E.164 format
    open var `phoneNumber`: String?
    public init() {
    }
    convenience public init(phoneNumber: String? = nil) {
        self.init()
        self.phoneNumber = `phoneNumber`
    }
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
