import Foundation
import ObjectMapper
open class Reserve: Model {
    public override var pathSegment: String {
        get{
            return "reserve"
        }
    }
    // Reserve Phone Number
    open func post(callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: PostResponse?, error) in
            callback(t, error)
        }
    }
    open class PostResponse: Mappable {
        // Phone numbers to be reserved/un-reserved
        open var `records`: [ReservePhoneNumber_Response_ReserveRecord]?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
        }
    }
}
