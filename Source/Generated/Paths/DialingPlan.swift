import Foundation
import ObjectMapper
open class DialingPlan: Model {
    public override var pathSegment: String {
        get{
            return "dialing-plan"
        }
    }
    // Get IBO Dialing Plans
    open func get(callback: @escaping (_ t: GetResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: GetResponse?, error) in
            callback(t, error)
        }
    }
    open class GetResponse: Mappable {
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
    }
}
