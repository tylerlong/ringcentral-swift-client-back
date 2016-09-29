import Foundation
import ObjectMapper
open class PhoneNumber: Model {
    public override var pathSegment: String {
        get{
            return "phone-number"
        }
    }
    // Get Extension Phone Numbers
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
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
    }
    // Get Account Phone Numbers
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListResponse: Mappable {
        // List of account phone numbers
        open var `records`: [PhoneNumberInfo]?
        // Information on paging
        open var `paging`: PagingInfo?
        // Information on navigation
        open var `navigation`: NavigationInfo?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `records` <- map["records"]
            `paging` <- map["paging"]
            `navigation` <- map["navigation"]
        }
    }
    // Get Phone Number by ID
    open func get(callback: @escaping (_ t: PhoneNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: PhoneNumberInfo?, error) in
            callback(t, error)
        }
    }
}
