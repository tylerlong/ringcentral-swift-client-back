import Foundation
import ObjectMapper
import Alamofire
open class LegInfo: Mappable {
    // Action description of the call operation
    open var `action`: String?
    // Call direction
    open var `direction`: String?
    // Call duration in seconds
    open var `duration`: Int?
    // Information on extension
    open var `extension`: LegInfo_ExtensionInfo?
    // Leg type
    open var `legType`: String?
    // The call start datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `startTime`: String?
    // Call type
    open var `type`: String?
    // Status description of the call operation
    open var `result`: String?
    // Caller information
    open var `from`: CallerInfo?
    // Callee information
    open var `to`: CallerInfo?
    // Call transport
    open var `transport`: String?
    // Call recording data. Returned if the call is recorded
    open var `recording`: RecordingInfo?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `action` <- map["action"]
        `direction` <- map["direction"]
        `duration` <- map["duration"]
        `extension` <- map["extension"]
        `legType` <- map["legType"]
        `startTime` <- map["startTime"]
        `type` <- map["type"]
        `result` <- map["result"]
        `from` <- map["from"]
        `to` <- map["to"]
        `transport` <- map["transport"]
        `recording` <- map["recording"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["action"] = self.action
        result["direction"] = self.direction
        result["duration"] = self.duration
        result["extension"] = self.extension
        result["legType"] = self.legType
        result["startTime"] = self.startTime
        result["type"] = self.type
        result["result"] = self.result
        result["from"] = self.from
        result["to"] = self.to
        result["transport"] = self.transport
        result["recording"] = self.recording
        return result
    }
}
