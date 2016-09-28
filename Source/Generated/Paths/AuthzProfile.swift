import Foundation
import ObjectMapper
open class AuthzProfile: Model {
    public override var pathSegment: String {
        get{
            return "authz-profile"
        }
    }
    func `check`() -> Check {
        return Check(parent: self)
    }
    // Get User Permissions
    func get() -> GetResponse {
        return GetResponse(JSONString: "")!
    }
    open class GetResponse: Mappable {
        // Canonical URI of an authorization profile resource
        open var `uri`: String?
        // List of user permissions granted
        open var `permissions`: [UserPermission]?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `permissions` <- map["permissions"]
        }
    }
}
