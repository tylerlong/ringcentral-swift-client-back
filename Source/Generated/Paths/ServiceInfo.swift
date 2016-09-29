import Foundation
import ObjectMapper
open class ServiceInfo: Model {
    public override var pathSegment: String {
        get{
            return "service-info"
        }
    }
    // Get Account Service Info
    open func get() -> GetResponse {
        return GetResponse(JSONString: "")!
    }
    open class GetResponse: Mappable {
        // Canonical URI of the account Service Info resource
        open var `uri`: String?
        // Account Service Plan name
        open var `servicePlanName`: String?
        // Service features information, see Service Feature List
        open var `serviceFeatures`: [ServiceFeatureInfo]?
        // Limits which are effective for the account
        open var `limits`: AccountLimits?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `servicePlanName` <- map["servicePlanName"]
            `serviceFeatures` <- map["serviceFeatures"]
            `limits` <- map["limits"]
        }
    }
}
