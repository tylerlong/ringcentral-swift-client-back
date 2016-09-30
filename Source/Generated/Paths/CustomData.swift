import Foundation
import ObjectMapper
import Alamofire
open class CustomData: Model {
    public override var pathSegment: String {
        get{
            return "custom-data"
        }
    }
    // Update Custom Data by Key
    open func put(parameters: Parameters? = nil, callback: @escaping (_ t: PutResponse?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: PutResponse?, error) in
            callback(t, error)
        }
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
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["id"] = self.id
            result["uri"] = self.uri
            result["value"] = self.value
            result["lastModifiedTime"] = self.lastModifiedTime
            result["attachment"] = self.attachment
            return result
        }
    }
}
