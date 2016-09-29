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
    open func delete() {
    }
    // Get Meeting
    open func get() -> MeetingInfo {
        return MeetingInfo(JSONString: "")!
    }
    // Update Meeting
    open func put() -> MeetingInfo {
        return MeetingInfo(JSONString: "")!
    }
}
