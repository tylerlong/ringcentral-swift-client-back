import Foundation
import ObjectMapper
open class Account: Model {
    public override var pathSegment: String {
        get{
            return "account"
        }
    }
    func `activeCalls`() -> ActiveCalls {
        return ActiveCalls(parent: self)
    }
    func `businessAddress`() -> BusinessAddress {
        return BusinessAddress(parent: self)
    }
    func `callLog`(_id: String? = nil) -> CallLog {
        return CallLog(parent: self, _id: _id)
    }
    func `department`(_id: String? = nil) -> Department {
        return Department(parent: self, _id: _id)
    }
    func `device`(_id: String? = nil) -> Device {
        return Device(parent: self, _id: _id)
    }
    func `dialingPlan`() -> DialingPlan {
        return DialingPlan(parent: self)
    }
    func `extension`(_id: String? = nil) -> Extension {
        return Extension(parent: self, _id: _id)
    }
    func `order`(_id: String? = nil) -> Order {
        return Order(parent: self, _id: _id)
    }
    func `phoneNumber`(_id: String? = nil) -> PhoneNumber {
        return PhoneNumber(parent: self, _id: _id)
    }
    func `recording`(_id: String? = nil) -> Recording {
        return Recording(parent: self, _id: _id)
    }
    func `serviceInfo`() -> ServiceInfo {
        return ServiceInfo(parent: self)
    }
    // Get Account Info by ID
    func get() -> AccountInfo {
        return AccountInfo(JSONString: "")!
    }
}
