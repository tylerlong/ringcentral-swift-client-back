import Foundation
import ObjectMapper
import Alamofire
open class ExtensionInfo_Request_PasswordPIN: Mappable {
    // Password for extension
    open var `password`: String?
    // IVR PIN
    open var `ivrPin`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `password` <- map["password"]
        `ivrPin` <- map["ivrPin"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
