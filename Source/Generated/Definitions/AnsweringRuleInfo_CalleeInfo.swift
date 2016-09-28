import Foundation
import ObjectMapper
open class AnsweringRuleInfo_CalleeInfo: Mappable {
    // Called phone number
    open var `phoneNumber`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `phoneNumber` <- map["phoneNumber"]
    }
}
