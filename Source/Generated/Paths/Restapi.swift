import Foundation
import ObjectMapper
open class Restapi: Model {
    public override var pathSegment: String {
        get{
            return "restapi"
        }
    }
    func `oauth`() -> Oauth {
        return Oauth(parent: self)
    }
    func `account`(_id: String? = nil) -> Account {
        return Account(parent: self, _id: _id)
    }
    func `clientInfo`() -> ClientInfo {
        return ClientInfo(parent: self)
    }
    func `dictionary`() -> Dictionary {
        return Dictionary(parent: self)
    }
    func `numberParser`() -> NumberParser {
        return NumberParser(parent: self)
    }
    func `numberPool`() -> NumberPool {
        return NumberPool(parent: self)
    }
    func `subscription`(_id: String? = nil) -> Subscription {
        return Subscription(parent: self, _id: _id)
    }
    // Get API Version Info
    func get() -> VersionInfo {
        return VersionInfo(JSONString: "")!
    }
}
