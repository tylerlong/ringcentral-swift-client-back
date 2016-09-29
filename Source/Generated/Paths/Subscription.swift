import Foundation
import ObjectMapper
open class Subscription: Model {
    public override var pathSegment: String {
        get{
            return "subscription"
        }
    }
    // Cancel Subscription by ID
    open func delete() {
    }
    // Get Subscription by ID
    open func get() -> SubscriptionInfo {
        return SubscriptionInfo(JSONString: "")!
    }
    // Update/Renew Subscription by ID
    open func put() -> SubscriptionInfo {
        return SubscriptionInfo(JSONString: "")!
    }
}
