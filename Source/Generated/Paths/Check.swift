import Foundation
import ObjectMapper
open class Check: Model {
    public override var pathSegment: String {
        get{
            return "check"
        }
    }
    // Check User Permissions
    open func get() -> GetResponse {
        return GetResponse(JSONString: "")!
    }
    open class GetResponse: Mappable {
        // Canonical URI of a permission resource
        open var `uri`: String?
        // Specifies if check result is successful or not
        open var `successful`: Bool?
        // Information on a permission checked. Returned if successful is 'True'
        open var `details`: PermissionDetailsInfo?
        // List of active scopes for permission. Returned if successful is 'True'
        open var `scopes`: [String]?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `successful` <- map["successful"]
            `details` <- map["details"]
            `scopes` <- map["scopes"]
        }
    }
}
