import Foundation
import ObjectMapper
import Alamofire
open class CallLogRecord: Mappable {
    // Internal identifier of a cal log record
    open var `id`: String?
    // Canonical URI of a call log record
    open var `uri`: String?
    // Internal identifier of a call session
    open var `sessionId`: String?
    // Caller information
    open var `from`: CallerInfo?
    // Callee information
    open var `to`: CallerInfo?
    // Call type
    open var `type`: String?
    // Call direction
    open var `direction`: String?
    // Action description of the call operation
    open var `action`: String?
    // Status description of the call operation
    open var `result`: String?
    // The call start datetime in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `startTime`: String?
    // Call duration in seconds
    open var `duration`: Int?
    // Call recording data. Returned if the call is recorded, the withRecording parameter is set to 'True' in this case
    open var `recording`: RecordingInfo?
    // For 'Detailed' view only. The datetime when the call log record was modified in ISO 8601 format including timezone, for example 2016-03-10T18:07:52.534Z
    open var `lastModifiedTime`: String?
    // For 'Detailed' view only. Call transport
    open var `transport`: String?
    // For 'Detailed' view only. Leg description
    open var `legs`: [LegInfo]?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `id` <- map["id"]
        `uri` <- map["uri"]
        `sessionId` <- map["sessionId"]
        `from` <- map["from"]
        `to` <- map["to"]
        `type` <- map["type"]
        `direction` <- map["direction"]
        `action` <- map["action"]
        `result` <- map["result"]
        `startTime` <- map["startTime"]
        `duration` <- map["duration"]
        `recording` <- map["recording"]
        `lastModifiedTime` <- map["lastModifiedTime"]
        `transport` <- map["transport"]
        `legs` <- map["legs"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
