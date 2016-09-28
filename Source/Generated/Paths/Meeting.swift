import Foundation
import ObjectMapper
open class Meeting: Model {
    public override var pathSegment: String {
        get{
            return "meeting"
        }
    }
    func `serviceInfo`() -> ServiceInfo {
        return ServiceInfo(parent: self)
    }
    func `end`() -> End {
        return End(parent: self)
    }
    // Delete Meeting
    func delete() {
    }
    // Get Meeting
    func get() -> MeetingInfo {
        return MeetingInfo(JSONString: "")!
    }
    // Update Meeting
    func put() -> MeetingInfo {
        return MeetingInfo(JSONString: "")!
    }
}
