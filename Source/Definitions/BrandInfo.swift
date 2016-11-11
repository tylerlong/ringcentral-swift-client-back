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
    public init() {
    }
    convenience public init(id: String? = nil, name: String? = nil, homeCountry: CountryInfo? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
        self.homeCountry = `homeCountry`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `name` <- map["name"]
        `homeCountry` <- map["homeCountry"]
    }
    open func toParameters() -> Parameters {
        var result = [String: String]()
        result["json-string"] = self.toJSONString(prettyPrint: false)!
        return result
    }
}
