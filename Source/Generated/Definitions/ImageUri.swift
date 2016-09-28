import Foundation
import ObjectMapper
open class ImageUri: Mappable {
    // Link to an image.
    open var `uri`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
    }
}
