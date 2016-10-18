import Foundation
import ObjectMapper
import Alamofire
open class State: Model {
    public override var pathSegment: String {
        get{
            return "state"
        }
    }
    // Get State/Province List
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get State/Province List
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get State/Province List
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        // Internal identifier of a country
        open var `countryId`: Int?
        // Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'.
        open var `page`: Int?
        // Indicates the page size (number of items). If not specified, the value is '100' by default
        open var `perPage`: Int?
        // If 'True', the list of states with phone numbers available for buying is returned. The default value is 'False'
        open var `withPhoneNumbers`: Bool?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `countryId` <- map["countryId"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `withPhoneNumbers` <- map["withPhoneNumbers"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["countryId"] = self.countryId
            result["page"] = self.page
            result["perPage"] = self.perPage
            result["withPhoneNumbers"] = self.withPhoneNumbers
            return result
        }
    }
    open class ListResponse: Mappable {
        // List of states
        open var `records`: [StateInfo]?
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
    // Get State/Province by ID
    open func get(callback: @escaping (_ t: StateInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: StateInfo?, error) in
            callback(t, error)
        }
    }
}
