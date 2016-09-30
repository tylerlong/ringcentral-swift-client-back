import Foundation
import ObjectMapper
import Alamofire
open class Recording: Model {
    public override var pathSegment: String {
        get{
            return "recording"
        }
    }
    open func `content`(_ _id: String? = nil) -> Content {
        return Content(parent: self, _id: _id)
    }
    // Get Call Recording Metadata
    open func get(callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetResponse?, error) in
            callback(t, error)
        }
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
