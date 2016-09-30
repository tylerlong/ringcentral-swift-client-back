import Foundation
import ObjectMapper
import Alamofire
open class RingOutInfo: Mappable {
    // Internal identifier of a RingOut call
    open var `id`: String?
    // RingOut status information
    open var `status`: RingOutStatusInfo?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `status` <- map["status"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["id"] = self.id
        result["status"] = self.status
        return result
    }
}
