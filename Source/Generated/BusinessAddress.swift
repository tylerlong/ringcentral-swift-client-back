import Foundation
import ObjectMapper
open class BusinessAddress: Model {
    public override var pathSegment: String {
        get{
            return "business-address"
        }
    }
    // Get Company Business Address
    func get() -> GetResponse {
        return GetResponse(JSONString: "")!
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
    func put() -> PutResponse {
        return PutResponse(JSONString: "")!
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
