import Foundation
import ObjectMapper
import Alamofire
open class NavigationInfo: Mappable {
    // First page of the list
    open var `firstPage`: Page?
    // Next page of the list
    open var `nextPage`: Page?
    // Previous page of the list
    open var `previousPage`: Page?
    // Last page of the list
    open var `lastPage`: Page?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `firstPage` <- map["firstPage"]
        `nextPage` <- map["nextPage"]
        `previousPage` <- map["previousPage"]
        `lastPage` <- map["lastPage"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
