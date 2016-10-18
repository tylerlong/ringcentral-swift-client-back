import Foundation
import ObjectMapper
import Alamofire
open class RecordingInfo: Mappable {
    // Internal identifier of the call recording
    open var `id`: Int?
    // Link to the call recording metadata resource
    open var `uri`: String?
    // Indicates recording mode used
    open var `type`: String?
    // Link to the call recording binary content
    open var `contentUri`: String?
    public init() {
    }
    convenience public init(id: Int? = nil, uri: String? = nil, type: String? = nil, contentUri: String? = nil) {
        self.init()
        self.id = `id`
        self.uri = `uri`
        self.type = `type`
        self.contentUri = `contentUri`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `type` <- map["type"]
        `contentUri` <- map["contentUri"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["id"] = self.id
        result["uri"] = self.uri
        result["type"] = self.type
        result["contentUri"] = self.contentUri
        return result
    }
}
