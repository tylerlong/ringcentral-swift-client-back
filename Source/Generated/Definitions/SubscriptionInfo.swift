import Foundation
import ObjectMapper
open class SubscriptionInfo: Mappable {
    // Internal identifier of a subscription
    open var `id`: String?
    // Canonical URI of a subscription
    open var `uri`: String?
    // Collection of URIs to API resources (message-store/presence/detailed presence)
    open var `eventFilters`: [String]?
    // Subscription expiration datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `expirationTime`: String?
    // Subscription lifetime in seconds. The default value is 900
    open var `expiresIn`: Int?
    // Subscription status
    open var `status`: String?
    // Subscription creation datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `creationTime`: String?
    // Delivery mode data
    open var `deliveryMode`: DeliveryMode?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `eventFilters` <- map["eventFilters"]
        `expirationTime` <- map["expirationTime"]
        `expiresIn` <- map["expiresIn"]
        `status` <- map["status"]
        `creationTime` <- map["creationTime"]
        `deliveryMode` <- map["deliveryMode"]
    }
}
