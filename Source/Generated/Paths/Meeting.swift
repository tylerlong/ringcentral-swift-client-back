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
    open func post(parameters: Parameters? = nil, callback: @escaping (_ t: MeetingInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: MeetingInfo?, error) in
            callback(t, error)
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
    open func put(parameters: Parameters? = nil, callback: @escaping (_ t: MeetingInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: MeetingInfo?, error) in
            callback(t, error)
        }
    }
}
