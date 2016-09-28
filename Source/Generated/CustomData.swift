import Foundation
import ObjectMapper
open class CustomData: Model {
    public override var pathSegment: String {
        get{
            return "custom-data"
        }
    }
    // Update Custom Data by Key
    func put() -> PutResponse {
        return PutResponse(JSONString: "")!
    }
    open class PutResponse: Mappable {
        // Custom data access key
        open var `id`: String?
        // Link to the custom data
        open var `uri`: String?
        // Description of custom data
        open var `value`: String?
        // Time of the last change in custom data
        open var `lastModifiedTime`: String?
        // Attachment data: link and type
        open var `attachment`: AttachmentInfo?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `id` <- map["id"]
            `uri` <- map["uri"]
            `value` <- map["value"]
            `lastModifiedTime` <- map["lastModifiedTime"]
            `attachment` <- map["attachment"]
        }
    }
}
