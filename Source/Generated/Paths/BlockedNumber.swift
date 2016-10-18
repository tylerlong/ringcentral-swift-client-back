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
    open func post(callback: @escaping (_ t: BlockedNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: BlockedNumberInfo?, error) in
            callback(t, error)
        }
    }
    // Add New Blocked Number
    open func post(parameters: Parameters, callback: @escaping (_ t: BlockedNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: BlockedNumberInfo?, error) in
            callback(t, error)
        }
    }
    // Add New Blocked Number
    open func post(parameters: BlockedNumberInfo, callback: @escaping (_ t: BlockedNumberInfo?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
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
        public init() {
        }
        convenience public init(records: [BlockedNumberInfo]? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
            self.init()
            self.records = `records`
            self.navigation = `navigation`
            self.paging = `paging`
        }
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
    open func put(callback: @escaping (_ t: BlockedNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: BlockedNumberInfo?, error) in
            callback(t, error)
        }
    }
    // Update Blocked Number Label
    open func put(parameters: Parameters, callback: @escaping (_ t: BlockedNumberInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: BlockedNumberInfo?, error) in
            callback(t, error)
        }
    }
    // Update Blocked Number Label
    open func put(parameters: BlockedNumberInfo, callback: @escaping (_ t: BlockedNumberInfo?, _ error: HTTPError?) -> Void) {
        put(parameters: parameters.toParameters(), callback: callback)
    }
}
