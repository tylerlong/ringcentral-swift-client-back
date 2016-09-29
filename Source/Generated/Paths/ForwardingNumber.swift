import Foundation
import ObjectMapper
open class ForwardingNumber: Model {
    public override var pathSegment: String {
        get{
            return "forwarding-number"
        }
    }
    // Add New Forwarding Number
    open func post(callback: @escaping (_ t: ForwardingNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: ForwardingNumberInfo?, error) in
            callback(t, error)
        }
    }
    // Get Forwarding Numbers
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListResponse: Mappable {
        // List of forwarding phone numbers
        open var `records`: [ForwardingNumberInfo]?
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
}
