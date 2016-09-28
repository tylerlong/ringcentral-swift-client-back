import Foundation
import ObjectMapper
open class Subscription: Model {
    public override var pathSegment: String {
        get{
            return "subscription"
        }
    }
    // Cancel Subscription by ID
    func delete() {
    }
    // Get Subscription by ID
    func get() -> SubscriptionInfo {
        return SubscriptionInfo(JSONString: "")!
    }
    // Update/Renew Subscription by ID
    func put() -> SubscriptionInfo {
        return SubscriptionInfo(JSONString: "")!
    }
}
