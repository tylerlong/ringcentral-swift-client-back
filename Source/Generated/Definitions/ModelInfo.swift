import Foundation
import ObjectMapper
import Alamofire
open class ModelInfo: Mappable {
    // Device model identifier. Mandatory when ordering a HardPhone if boxBillingId is not used for ordering
    open var `id`: String?
    // Device name
    open var `name`: String?
    // Addons description
    open var `addons`: [AddonInfo]?
    public init() {
    }
    convenience public init(id: String? = nil, name: String? = nil, addons: [AddonInfo]? = nil) {
        self.init()
        self.id = `id`
        self.name = `name`
        self.addons = `addons`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `name` <- map["name"]
        `addons` <- map["addons"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["id"] = self.id
        result["name"] = self.name
        result["addons"] = self.addons
        return result
    }
}
