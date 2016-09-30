import Foundation
import ObjectMapper
import Alamofire
open class AnsweringRule: Model {
    public override var pathSegment: String {
        get{
            return "answering-rule"
        }
    }
    // Create Custom Answering Rule
    open func post(parameters: Parameters? = nil, callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
    // Get Answering Rules List
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListResponse: Mappable {
        // Canonical URI of an answering rule resource
        open var `uri`: String?
        // List of answering rules
        open var `records`: [AnsweringRuleInfo]?
        // Information on paging
        open var `paging`: PagingInfo?
        // Information on navigation
        open var `navigation`: NavigationInfo?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `records` <- map["records"]
            `paging` <- map["paging"]
            `navigation` <- map["navigation"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["uri"] = self.uri
            result["records"] = self.records
            result["paging"] = self.paging
            result["navigation"] = self.navigation
            return result
        }
    }
    // Delete Answering Rule by ID
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Get Custom Answering Rule by ID
    open func get(callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
    // Update Answering Rule by ID
    open func put(parameters: Parameters? = nil, callback: @escaping (_ t: AnsweringRuleInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: AnsweringRuleInfo?, error) in
            callback(t, error)
        }
    }
}
