import Foundation
import ObjectMapper
import Alamofire
open class Language: Model {
    public override var pathSegment: String {
        get{
            return "language"
        }
    }
    // Get Supported Language List
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListResponse: Mappable {
        // Language data
        open var `records`: [LanguageInfo]?
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
    // Get Language by ID
    open func get(callback: @escaping (_ t: LanguageInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: LanguageInfo?, error) in
            callback(t, error)
        }
    }
}
