import Foundation
import ObjectMapper
open class Account: Model {
    public override var pathSegment: String {
        get{
            return "account"
        }
    }
    open func `activeCalls`() -> ActiveCalls {
        return ActiveCalls(parent: self)
    }
    open func `businessAddress`() -> BusinessAddress {
        return BusinessAddress(parent: self)
    }
    open func `callLog`(_ _id: String? = nil) -> CallLog {
        return CallLog(parent: self, _id: _id)
    }
    open func `department`(_ _id: String? = nil) -> Department {
        return Department(parent: self, _id: _id)
    }
    open func `device`(_ _id: String? = nil) -> Device {
        return Device(parent: self, _id: _id)
    }
    open func `dialingPlan`() -> DialingPlan {
        return DialingPlan(parent: self)
    }
    open func `extension`(_ _id: String? = nil) -> Extension {
        return Extension(parent: self, _id: _id)
    }
    open func `order`(_ _id: String? = nil) -> Order {
        return Order(parent: self, _id: _id)
    }
    open func `phoneNumber`(_ _id: String? = nil) -> PhoneNumber {
        return PhoneNumber(parent: self, _id: _id)
    }
    open func `recording`(_ _id: String? = nil) -> Recording {
        return Recording(parent: self, _id: _id)
    }
    open func `serviceInfo`() -> ServiceInfo {
        return ServiceInfo(parent: self)
    }
    // Get Account Info by ID
    open func get() -> AccountInfo {
        return AccountInfo(JSONString: "")!
    }
}
