import PubNub

open class SubscriptionService: NSObject, PNObjectEventListener {

    var rc: RestClient!
    var pubnub: PubNub?
    var subscriptionInfo: SubscriptionInfo?
    public var eventFilters: [String] = []
    public var callback: ((String) -> Void)? = nil

    public init(_ rc: RestClient) {
        self.rc = rc
    }

    public func client(_ client: PubNub, didReceiveMessage message: PNMessageResult) {
        let base64Message = message.data.message as! String
        print(base64Message)
    }

    open func register() {
        if alive() {
            renew()
        } else {
            subscribe()
        }
    }

    open func subscribe() {

    }

    open func renew() {

    }

    func alive() -> Bool {
        if let _ = pubnub, let subscriptionInfo = subscriptionInfo {
            if subscriptionInfo.id != nil {
                if let deliveryMode = subscriptionInfo.deliveryMode {
                    if deliveryMode.subscriberKey != nil && deliveryMode.address != nil {
                        return true
                    }
                }
            }
        }
        return false
    }

}


extension Subscription {

    public func new() -> SubscriptionService {
        return SubscriptionService(rc)
    }

}
