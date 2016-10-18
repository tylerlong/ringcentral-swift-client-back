import Foundation
import ObjectMapper
import Alamofire
open class Reserve: Model {
    public override var pathSegment: String {
        get{
            return "reserve"
        }
    }
    // Reserve Phone Number
    open func post(parameters: PostParameters? = nil, callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters?.toParameters()) { (t: PostResponse?, error) in
            callback(t, error)
        }
    }
    open class PostParameters: Mappable {
        // Phone numbers to be reserved/un-reserved
        open var `records`: [ReservePhoneNumber_Request_ReserveRecord]?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["records"] = self.records
            return result
        }
    }
    open class PostResponse: Mappable {
        // Phone numbers to be reserved/un-reserved
        open var `records`: [ReservePhoneNumber_Response_ReserveRecord]?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["records"] = self.records
            return result
        }
    }
}
