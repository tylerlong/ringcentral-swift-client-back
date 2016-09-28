import Foundation
import ObjectMapper
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
}
