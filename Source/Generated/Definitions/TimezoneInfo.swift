import Foundation
import ObjectMapper
import Alamofire
open class TimezoneInfo: Mappable {
    // Internal identifier of a timezone
    open var `id`: String?
    // Canonical URI of a timezone
    open var `uri`: String?
    // Short name of a timezone
    open var `name`: String?
    // Meaningful description of the timezone
    open var `description`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `name` <- map["name"]
        `description` <- map["description"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["id"] = self.id
        result["uri"] = self.uri
        result["name"] = self.name
        result["description"] = self.description
        return result
    }
}
