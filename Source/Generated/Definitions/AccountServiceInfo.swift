import Foundation
import ObjectMapper
open class AccountServiceInfo: Mappable {
    // Canonical URI of a service info resource
    open var `uri`: String?
    // Information on account billing plan
    open var `billingPlan`: BillingPlanInfo?
    // Information on account brand
    open var `brand`: BrandInfo?
    // Information on account service plan
    open var `servicePlan`: ServicePlanInfo?
    // Information on account target service plan
    open var `targetServicePlan`: TargetServicePlanInfo?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `billingPlan` <- map["billingPlan"]
        `brand` <- map["brand"]
        `servicePlan` <- map["servicePlan"]
        `targetServicePlan` <- map["targetServicePlan"]
    }
}
