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
    // Get Server Info
    open func list(callback: @escaping (_ t: ServerInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ServerInfo?, error) in
            callback(t, error)
        }
    }
    // Get API Version Info
    open func get(callback: @escaping (_ t: VersionInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: VersionInfo?, error) in
            callback(t, error)
        }
    }
}
