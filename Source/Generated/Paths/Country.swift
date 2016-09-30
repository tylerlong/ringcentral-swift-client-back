import Foundation
import ObjectMapper
import Alamofire
open class Country: Model {
    public override var pathSegment: String {
        get{
            return "country"
        }
    }
    // Get Country List
    open func list(parameters: Parameters? = nil, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListResponse: Mappable {
        // List of countries with the country data
        open var `records`: [FullCountryInfo]?
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
    // Get Country by ID
    open func get(callback: @escaping (_ t: FullCountryInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: FullCountryInfo?, error) in
            callback(t, error)
        }
    }
}
