import Foundation
import ObjectMapper
import Alamofire
open class PhoneNumber: Model {
    public override var pathSegment: String {
        get{
            return "phone-number"
        }
    }
    // Get Extension Phone Numbers
    open func list(parameters: Parameters? = nil, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListResponse: Mappable {
        // List of phone numbers
        open var `records`: [PhoneNumberInfo]?
        // Information on navigation
        open var `navigation`: NavigationInfo?
        // Information on paging
        open var `paging`: PagingInfo?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
            `navigation` <- map["navigation"]
            `paging` <- map["paging"]
        }
        open func toParameters() -> Parameters {
            return [:]
        }
    }
    // Get Phone Number by ID
    open func get(callback: @escaping (_ t: PhoneNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: PhoneNumberInfo?, error) in
            callback(t, error)
        }
    }
}
