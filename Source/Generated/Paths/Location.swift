import Foundation
import ObjectMapper
import Alamofire
open class Location: Model {
    public override var pathSegment: String {
        get{
            return "location"
        }
    }
    // Get Location List
    open func list(parameters: ListParameters? = nil, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters?.toParameters()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListParameters: Mappable {
        // Sorts results by the specified property. The default value is 'City'
        open var `orderBy`: String?
        // Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'.
        open var `page`: Int?
        // Indicates the page size (number of items). If not specified, the value is '100' by default.
        open var `perPage`: Int?
        // Internal identifier of a state
        open var `stateId`: String?
        // Specifies if nxx codes are returned
        open var `withNxx`: Bool?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `orderBy` <- map["orderBy"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
            `stateId` <- map["stateId"]
            `withNxx` <- map["withNxx"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["orderBy"] = self.orderBy
            result["page"] = self.page
            result["perPage"] = self.perPage
            result["stateId"] = self.stateId
            result["withNxx"] = self.withNxx
            return result
        }
    }
    open class ListResponse: Mappable {
        // List of locations
        open var `records`: [LocationInfo]?
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
}
