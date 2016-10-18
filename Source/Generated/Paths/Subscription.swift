import Foundation
import ObjectMapper
import Alamofire
open class Subscription: Model {
    public override var pathSegment: String {
        get{
            return "subscription"
        }
    }
    // Create New Subscription
    open func post(parameters: PostParameters? = nil, callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters?.toParameters()) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    open class PostParameters: Mappable {
        // Mandatory. Collection of URIs to API resources (see Event Types for details). For APNS transport type only message event filter is available
        open var `eventFilters`: [String]?
        // Notification delivery settings
        open var `deliveryMode`: Subscription_Request_DeliveryMode?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `eventFilters` <- map["eventFilters"]
            `deliveryMode` <- map["deliveryMode"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["eventFilters"] = self.eventFilters
            result["deliveryMode"] = self.deliveryMode
            return result
        }
    }
    // Cancel Subscription by ID
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Get Subscription by ID
    open func get(callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    // Update/Renew Subscription by ID
    open func put(parameters: PutParameters? = nil, callback: @escaping (_ t: SubscriptionInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters?.toParameters()) { (t: SubscriptionInfo?, error) in
            callback(t, error)
        }
    }
    open class PutParameters: Mappable {
        // Collection of URIs to API resources (see Event Types). Mandatory field
        open var `eventFilters`: [String]?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `eventFilters` <- map["eventFilters"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["eventFilters"] = self.eventFilters
            return result
        }
    }
}
