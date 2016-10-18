import Foundation
import ObjectMapper
import Alamofire
open class ExtensionPermissions: Mappable {
    // Admin permission
    open var `admin`: PermissionInfo?
    // International Calling permission
    open var `internationalCalling`: PermissionInfo?
    public init() {
    }
    convenience public init(admin: PermissionInfo? = nil, internationalCalling: PermissionInfo? = nil) {
        self.init()
        self.admin = `admin`
        self.internationalCalling = `internationalCalling`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `admin` <- map["admin"]
        `internationalCalling` <- map["internationalCalling"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["admin"] = self.admin
        result["internationalCalling"] = self.internationalCalling
        return result
    }
}
