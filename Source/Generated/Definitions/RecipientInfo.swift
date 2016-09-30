import Foundation
import ObjectMapper
import Alamofire
open class RecipientInfo: Mappable {
    // Link to a recipient extension resource
    open var `uri`: String?
    // Internal identifier of a recipient extension
    open var `id`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- map["id"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["uri"] = self.uri
        result["id"] = self.id
        return result
    }
}
