import Foundation
import ObjectMapper
import Alamofire
open class CountryPath: Model {
    public override var pathSegment: String {
        get{
            return "country"
        }
    }
    // Get Country List
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Country List
    open func list(parameters: Parameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    // Get Country List
    open func list(parameters: ListParameters, callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        list(parameters: parameters.toParameters(), callback: callback)
    }
    open class ListParameters: Mappable {
        // Specifies whether login with the phone numbers of this country is enabled or not
        open var `loginAllowed`: Bool?
        // Specifies if RingCentral sells phone numbers of this country
        open var `numberSelling`: Bool?
        // Indicates the page number to retrieve. Only positive number values are allowed. Default value is '1'
        open var `page`: Int?
        // Indicates the page size (number of items). If not specified, the value is '100' by default
        open var `perPage`: Int?
        public init() {
        }
        convenience public init(loginAllowed: Bool? = nil, numberSelling: Bool? = nil, page: Int? = nil, perPage: Int? = nil) {
            self.init()
            self.loginAllowed = `loginAllowed`
            self.numberSelling = `numberSelling`
            self.page = `page`
            self.perPage = `perPage`
        }
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `loginAllowed` <- map["loginAllowed"]
            `numberSelling` <- map["numberSelling"]
            `page` <- map["page"]
            `perPage` <- map["perPage"]
        }
        open func toParameters() -> Parameters {
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
    open class ListResponse: Mappable {
        // List of countries with the country data
        open var `records`: [FullCountryInfo]?
        // Information on navigation
        open var `navigation`: NavigationInfo?
        // Information on paging
        open var `paging`: PagingInfo?
        public init() {
        }
        convenience public init(records: [FullCountryInfo]? = nil, navigation: NavigationInfo? = nil, paging: PagingInfo? = nil) {
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
            var result = [String: String]()
            result["json-string"] = self.toJSONString(prettyPrint: false)!
            return result
        }
    }
    // Get Country by ID
    open func get(callback: @escaping (_ t: FullCountryInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: FullCountryInfo?, error) in
            callback(t, error)
        }
    }
}
