import Foundation
import ObjectMapper
open class Grant: Model {
    public override var pathSegment: String {
        get{
            return "grant"
        }
    }
    // Get Extension Grants
    open func get(callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetResponse?, error) in
            callback(t, error)
        }
    }
    open class GetResponse: Mappable {
        // List of extension grants with the data
        open var `records`: [GrantInfo]?
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
    }
}
