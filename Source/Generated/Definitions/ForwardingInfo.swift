import Foundation
import ObjectMapper
import Alamofire
open class ForwardingInfo: Mappable {
    // Specifies if the user's softphone(s) are notified before forwarding the incoming call to desk phones and forwarding numbers
    open var `notifyMySoftPhones`: Bool?
    // Specifies if the administrator's softphone is notified before forwarding the incoming call to desk phones and forwarding numbers. The default value is 'False'
    open var `notifyAdminSoftPhones`: Bool?
    // Number of rings before forwarding starts
    open var `softPhonesRingCount`: Int?
    // Specifies the order in which forwarding numbers ring. 'Sequentially' means that forwarding numbers are ringing one at a time, in order of priority. 'Simultaneously' means that forwarding numbers are ring all at the same time
    open var `ringingMode`: String?
    // Information on a call forwarding rule
    open var `rules`: [RuleInfo]?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `notifyMySoftPhones` <- map["notifyMySoftPhones"]
        `notifyAdminSoftPhones` <- map["notifyAdminSoftPhones"]
        `softPhonesRingCount` <- map["softPhonesRingCount"]
        `ringingMode` <- map["ringingMode"]
        `rules` <- map["rules"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
