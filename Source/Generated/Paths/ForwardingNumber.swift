import Foundation
import ObjectMapper
import Alamofire
open class ForwardingNumber: Model {
    public override var pathSegment: String {
        get{
            return "forwarding-number"
        }
    }
    // Add New Forwarding Number
    open func post(parameters: Parameters? = nil, callback: @escaping (_ t: ForwardingNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: ForwardingNumberInfo?, error) in
            callback(t, error)
        }
    }
    // Get Forwarding Numbers
    open func list(parameters: Parameters? = nil, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: ListResponse?, error) in
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
        open func toParameters() -> Parameters {
            return [:]
        }
    }
}
