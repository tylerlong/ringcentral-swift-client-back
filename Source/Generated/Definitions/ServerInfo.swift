import Foundation
import ObjectMapper
import Alamofire
open class ServerInfo: Mappable {
    // Canonical URI of the API version
    open var `uri`: String?
    // Full API version information: uri, number, release date
    open var `apiVersions`: [VersionInfo]?
    // Server version
    open var `serverVersion`: String?
    // Server revision
    open var `serverRevision`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `apiVersions` <- map["apiVersions"]
        `serverVersion` <- map["serverVersion"]
        `serverRevision` <- map["serverRevision"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["uri"] = self.uri
        result["apiVersions"] = self.apiVersions
        result["serverVersion"] = self.serverVersion
        result["serverRevision"] = self.serverRevision
        return result
    }
}
