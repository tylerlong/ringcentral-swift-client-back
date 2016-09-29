import Foundation
import ObjectMapper
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
    open func put(callback: @escaping (_ t: MeetingInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: MeetingInfo?, error) in
            callback(t, error)
        }
    }
}
