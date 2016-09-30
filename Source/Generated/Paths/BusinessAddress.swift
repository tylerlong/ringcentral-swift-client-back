import Foundation
import ObjectMapper
import Alamofire
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
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["uri"] = self.uri
            result["company"] = self.company
            result["email"] = self.email
            result["businessAddress"] = self.businessAddress
            return result
        }
    }
    // Update Company Business Address
    open func put(parameters: Parameters? = nil, callback: @escaping (_ t: PutResponse?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: PutResponse?, error) in
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
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["uri"] = self.uri
            result["company"] = self.company
            result["email"] = self.email
            result["businessAddress"] = self.businessAddress
            return result
        }
    }
}
