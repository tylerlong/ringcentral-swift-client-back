import Foundation
import ObjectMapper
open class BusinessAddress: Model {
    public override var pathSegment: String {
        get{
            return "business-address"
        }
    }
    // Get Company Business Address
    open func get(callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetResponse?, error) in
            callback(t, error)
        }
    }
    open class GetResponse: Mappable {
        // Canonical URI of the business address resource
        open var `uri`: String?
        // Company business name
        open var `company`: String?
        // Company business email address
        open var `email`: String?
        // Company business address
        open var `businessAddress`: BusinessAddressInfo?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `company` <- map["company"]
            `email` <- map["email"]
            `businessAddress` <- map["businessAddress"]
        }
    }
    // Update Company Business Address
    open func put(callback: @escaping (_ t: PutResponse?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: PutResponse?, error) in
            callback(t, error)
        }
    }
    open class PutResponse: Mappable {
        // Canonical URI of the business address resource
        open var `uri`: String?
        // Company business name
        open var `company`: String?
        // Company business email address
        open var `email`: String?
        // Company business address
        open var `businessAddress`: BusinessAddressInfo?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `company` <- map["company"]
            `email` <- map["email"]
            `businessAddress` <- map["businessAddress"]
        }
    }
}
