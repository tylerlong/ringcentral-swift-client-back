import Foundation
import ObjectMapper
import Alamofire
open class RingOut_Request_From: Mappable {
    // Phone number in E.164 format
    open var `phoneNumber`: String?
    // Internal identifier of a forwarding number; returned in response in the id field. Can be specified instead of the phoneNumber attribute
    open var `forwardingNumberId`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
        `forwardingNumberId` <- map["forwardingNumberId"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
