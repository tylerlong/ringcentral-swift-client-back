import Foundation
import ObjectMapper
open class Recording: Model {
    public override var pathSegment: String {
        get{
            return "recording"
        }
    }
    // Get Call Recording Metadata
    func get() -> GetResponse {
        return GetResponse(JSONString: "")!
    }
    open class GetResponse: Mappable {
        // Internal identifier of the call recording
        open var `id`: Int?
        // Link to the call recording binary content
        open var `contentUri`: String?
        // Call recording file format. Supported format is audio/x-wav
        open var `contentType`: String?
        // Recorded call duration
        open var `duration`: Int?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `id` <- map["id"]
            `contentUri` <- map["contentUri"]
            `contentType` <- map["contentType"]
            `duration` <- map["duration"]
        }
    }
}
