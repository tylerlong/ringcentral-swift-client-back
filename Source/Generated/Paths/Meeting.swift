import Foundation
import ObjectMapper
import Alamofire
open class Meeting: Model {
    public override var pathSegment: String {
        get{
            return "meeting"
        }
    }
    open func `serviceInfo`() -> ServiceInfo {
        return ServiceInfo(parent: self)
    }
    open func `end`() -> End {
        return End(parent: self)
    }
    // Create Meeting
    open func post(parameters: PostParameters? = nil, callback: @escaping (_ t: MeetingInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters?.toParameters()) { (t: MeetingInfo?, error) in
            callback(t, error)
        }
    }
    open class PostParameters: Mappable {
        // Topic of a meeting
        open var `topic`: String?
        // Type of a meeting. 'Instant' - meeting that is instantly started as soon as the host creates it; 'Scheduled' - common scheduled meeting; 'Recurring' - a recurring meeting. If the specified meeting type is 'Scheduled' then schedule property is mandatory for request
        open var `meetingType`: String?
        // Password required to join a meeting. Max number of characters is 10
        open var `password`: String?
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
            `topic` <- map["topic"]
            `meetingType` <- map["meetingType"]
            `password` <- map["password"]
            `schedule` <- map["schedule"]
            `allowJoinBeforeHost` <- map["allowJoinBeforeHost"]
            `startHostVideo` <- map["startHostVideo"]
            `startParticipantsVideo` <- map["startParticipantsVideo"]
            `audioOptions` <- map["audioOptions"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["topic"] = self.topic
            result["meetingType"] = self.meetingType
            result["password"] = self.password
            result["schedule"] = self.schedule
            result["allowJoinBeforeHost"] = self.allowJoinBeforeHost
            result["startHostVideo"] = self.startHostVideo
            result["startParticipantsVideo"] = self.startParticipantsVideo
            result["audioOptions"] = self.audioOptions
            return result
        }
    }
    // Get Meetings List
    open func list(callback: @escaping (_ t: ListResponse?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: ListResponse?, error) in
            callback(t, error)
        }
    }
    open class ListResponse: Mappable {
        // Canonical URI of meetings resource
        open var `uri`: String?
        // List of extension meetings
        open var `records`: [MeetingInfo]?
        // Information on paging
        open var `paging`: PagingInfo?
        // Information on navigation
        open var `navigation`: NavigationInfo?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `uri` <- map["uri"]
            `records` <- map["records"]
            `paging` <- map["paging"]
            `navigation` <- map["navigation"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["uri"] = self.uri
            result["records"] = self.records
            result["paging"] = self.paging
            result["navigation"] = self.navigation
            return result
        }
    }
    // Delete Meeting
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Get Meeting
    open func get(callback: @escaping (_ t: MeetingInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: MeetingInfo?, error) in
            callback(t, error)
        }
    }
    // Update Meeting
    open func put(parameters: PutParameters? = nil, callback: @escaping (_ t: MeetingInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters?.toParameters()) { (t: MeetingInfo?, error) in
            callback(t, error)
        }
    }
    open class PutParameters: Mappable {
        // Topic of a meeting
        open var `topic`: String?
        // Type of a meeting. 'Instant' - meeting that is instantly started as soon as the host creates it; 'Scheduled' - common scheduled meeting; 'Recurring' - a recurring meeting. If the specified meeting type is 'Scheduled' then schedule property is mandatory for request
        open var `meetingType`: String?
        // Password required to join a meeting. Max number of characters is 10
        open var `password`: String?
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
            `topic` <- map["topic"]
            `meetingType` <- map["meetingType"]
            `password` <- map["password"]
            `schedule` <- map["schedule"]
            `allowJoinBeforeHost` <- map["allowJoinBeforeHost"]
            `startHostVideo` <- map["startHostVideo"]
            `startParticipantsVideo` <- map["startParticipantsVideo"]
            `audioOptions` <- map["audioOptions"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["topic"] = self.topic
            result["meetingType"] = self.meetingType
            result["password"] = self.password
            result["schedule"] = self.schedule
            result["allowJoinBeforeHost"] = self.allowJoinBeforeHost
            result["startHostVideo"] = self.startHostVideo
            result["startParticipantsVideo"] = self.startParticipantsVideo
            result["audioOptions"] = self.audioOptions
            return result
        }
    }
}
