import Foundation
import ObjectMapper
import Alamofire
open class DialingPlan: Model {
    public override var pathSegment: String {
        get{
            return "dialing-plan"
        }
    }
    // Get IBO Dialing Plans
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get IBO Dialing Plans
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get IBO Dialing Plans
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        // Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        open var `page`: Int?
        // Indicates the page size (number of items). If not specified, the value is '100' by default
        open var `perPage`: Int?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["page"] = self.page
            result["perPage"] = self.perPage
            return result
        }
    }
    open class ListResponse: Mappable {
        // List of countries which can be selected for a dialing plan
        open var `records`: [DialingPlanCountryInfo]?
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
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["records"] = self.records
            result["paging"] = self.paging
            result["navigation"] = self.navigation
            return result
        }
    }
}
