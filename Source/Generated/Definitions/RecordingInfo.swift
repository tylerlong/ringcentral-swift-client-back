import Foundation
import ObjectMapper
open class RecordingInfo: Mappable {
    // Internal identifier of the call recording
    open var `id`: Int?
    // Link to the call recording metadata resource
    open var `uri`: String?
    // Indicates recording mode used
    open var `type`: String?
    // Link to the call recording binary content
    open var `contentUri`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `type` <- map["type"]
        `contentUri` <- map["contentUri"]
    }
}
