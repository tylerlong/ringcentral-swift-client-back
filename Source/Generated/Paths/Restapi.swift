import Foundation
import ObjectMapper
open class Restapi: Model {
    public override var pathSegment: String {
        get{
            return "restapi"
        }
    }
    open func `oauth`() -> Oauth {
        return Oauth(parent: self)
    }
    open func `account`(_ _id: String? = nil) -> Account {
        return Account(parent: self, _id: _id)
    }
    open func `clientInfo`() -> ClientInfo {
        return ClientInfo(parent: self)
    }
    open func `dictionary`() -> Dictionary {
        return Dictionary(parent: self)
    }
    open func `numberParser`() -> NumberParser {
        return NumberParser(parent: self)
    }
    open func `numberPool`() -> NumberPool {
        return NumberPool(parent: self)
    }
    open func `subscription`(_ _id: String? = nil) -> Subscription {
        return Subscription(parent: self, _id: _id)
    }
    // Get API Version Info
    open func get() -> VersionInfo {
        return VersionInfo(JSONString: "")!
    }
}
