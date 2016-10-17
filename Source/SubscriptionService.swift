open class SubscriptionService {

    public var eventFilters: [String] = []
    public var callback: ((String) -> Void)? = nil

    open func register() {
        
    }

}


extension Subscription {

    public func new() -> SubscriptionService {
        return SubscriptionService()
    }

}
