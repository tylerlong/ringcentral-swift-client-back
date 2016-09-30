import Foundation
import ObjectMapper
import Alamofire
open class BlockedNumber: Model {
    public override var pathSegment: String {
        get{
            return "blocked-number"
        }
    }
    // Add New Blocked Number
    open func post(parameters: Parameters? = nil, callback: @escaping (_ t: BlockedNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: BlockedNumberInfo?, error) in
            callback(t, error)
        }
    }
    // Get Blocked Number List
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListResponse: Mappable {
        // List of blocked phone numbers
        open var `records`: [BlockedNumberInfo]?
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
            var result = [String: Any]()
            result["records"] = self.records
            result["navigation"] = self.navigation
            result["paging"] = self.paging
            return result
        }
    }
    // Delete Blocked Number by ID
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Get Blocked Number by ID
    open func get(callback: @escaping (_ t: BlockedNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: BlockedNumberInfo?, error) in
            callback(t, error)
        }
    }
    // Update Blocked Number Label
    open func put(parameters: Parameters? = nil, callback: @escaping (_ t: BlockedNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: BlockedNumberInfo?, error) in
            callback(t, error)
        }
    }
}
