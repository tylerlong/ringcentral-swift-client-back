import Foundation
import ObjectMapper
import Alamofire
open class Lookup: Model {
    public override var pathSegment: String {
        get{
            return "lookup"
        }
    }
    // Look up Phone Number
    open func post(parameters: Parameters? = nil, callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: PostResponse?, error) in
            callback(t, error)
        }
    }
    open class PostResponse: Mappable {
        // Canonical URI of the phone numbers resource
        open var `uri`: String?
        // List of phone numbers filtered by the specified criteria
        open var `records`: [LookUpPhoneNumber_PhoneNumberInfo]?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `records` <- map["records"]
        }
    }
}
