import Foundation
import ObjectMapper
import Alamofire
open class PhoneLinesInfo: Mappable {
    // Type of phone line
    open var `lineType`: String?
    // Phone number information
    open var `phoneInfo`: PhoneLinesInfo_PhoneNumberInfo?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `lineType` <- map["lineType"]
        `phoneInfo` <- map["phoneInfo"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["lineType"] = self.lineType
        result["phoneInfo"] = self.phoneInfo
        return result
    }
}
