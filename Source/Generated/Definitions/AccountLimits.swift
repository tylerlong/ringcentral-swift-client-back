import Foundation
import ObjectMapper
import Alamofire
open class AccountLimits: Mappable {
    // The maximum number of free softphone digital lines per user extension
    open var `freeSoftPhoneLinesPerExtension`: Int?
    // The maximum number of participants in RingCentral Meeting hosted by this account's user
    open var `meetingSize`: Int?
    // The maximum number of extensions which can be included in the list of users monitored for Presence
    open var `maxMonitoredExtensionsPerUser`: Int?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `freeSoftPhoneLinesPerExtension` <- map["freeSoftPhoneLinesPerExtension"]
        `meetingSize` <- map["meetingSize"]
        `maxMonitoredExtensionsPerUser` <- map["maxMonitoredExtensionsPerUser"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["freeSoftPhoneLinesPerExtension"] = self.freeSoftPhoneLinesPerExtension
        result["meetingSize"] = self.meetingSize
        result["maxMonitoredExtensionsPerUser"] = self.maxMonitoredExtensionsPerUser
        return result
    }
}
