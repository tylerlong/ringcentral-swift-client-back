import Foundation
import ObjectMapper
import Alamofire
open class LinksInfo: Mappable {
    // Link to start a meeting
    open var `startUri`: String?
    // Link to join a meeting
    open var `joinUri`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `startUri` <- map["startUri"]
        `joinUri` <- map["joinUri"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["startUri"] = self.startUri
        result["joinUri"] = self.joinUri
        return result
    }
}
