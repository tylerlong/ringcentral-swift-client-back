import Foundation
import ObjectMapper
import Alamofire
open class BlockedNumberInfo: Mappable {
    // Standard resource properties ID and canonical URI, see the section called “Resource Identification Properties”
    open var `id`: String?
    // Canonical URI of a blocked number resource
    open var `uri`: String?
    // Name assigned by a user to a blocked phone number
    open var `name`: String?
    // Phone number to be blocked
    open var `phoneNumber`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `name` <- map["name"]
        `phoneNumber` <- map["phoneNumber"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
