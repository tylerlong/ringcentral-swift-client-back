import Foundation
import ObjectMapper
import Alamofire
open class MeetingInfo: Mappable {
    // Canonical URI of a meeting resource
    open var `uri`: String?
    // Internal identifier of a meeting as retrieved from Zoom
    open var `id`: String?
    // Topic of a meeting
    open var `topic`: String?
    // Type of a meeting
    open var `meetingType`: String?
    // Password required to join a meeting
    open var `password`: String?
    // Current status of a meeting
    open var `status`: String?
    // Links to start/join the meeting
    open var `links`: LinksInfo?
    // Schedule of a meeting
    open var `schedule`: MeetingScheduleInfo?
    // If 'True' then the meeting can be joined and started by any participant (not host only). Supported for the meetings of 'Scheduled' and 'Recurring' type.
    open var `allowJoinBeforeHost`: Bool?
    // Enables starting video when host joins the meeting
    open var `startHostVideo`: Bool?
    // Enables starting video when participants join the meeting
    open var `startParticipantsVideo`: Bool?
    // Meeting audio options. Possible values are 'Phone', 'ComputerAudio'
    open var `audioOptions`: [String]?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- map["id"]
        `topic` <- map["topic"]
        `meetingType` <- map["meetingType"]
        `password` <- map["password"]
        `status` <- map["status"]
        `links` <- map["links"]
        `schedule` <- map["schedule"]
        `allowJoinBeforeHost` <- map["allowJoinBeforeHost"]
        `startHostVideo` <- map["startHostVideo"]
        `startParticipantsVideo` <- map["startParticipantsVideo"]
        `audioOptions` <- map["audioOptions"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
