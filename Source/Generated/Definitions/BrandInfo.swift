import Foundation
import ObjectMapper
import Alamofire
open class BrandInfo: Mappable {
    // Internal identifier of a brand
    open var `id`: String?
    // Brand name, for example "RingCentral UK", "ClearFax"
    open var `name`: String?
    // Home country information
    open var `homeCountry`: CountryInfo?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `name` <- map["name"]
        `homeCountry` <- map["homeCountry"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
