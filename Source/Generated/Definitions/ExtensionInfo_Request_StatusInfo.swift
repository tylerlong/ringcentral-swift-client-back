import Foundation
import ObjectMapper
import Alamofire
open class ExtensionInfo_Request_StatusInfo: Mappable {
    // Required extension status
    open var `status`: String?
    // Extension status information, only for the 'Disabled' status
    open var `statusInfo`: StatusInfo?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `status` <- map["status"]
        `statusInfo` <- map["statusInfo"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["status"] = self.status
        result["statusInfo"] = self.statusInfo
        return result
    }
}
