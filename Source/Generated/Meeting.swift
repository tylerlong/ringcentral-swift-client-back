import Foundation
import ObjectMapper
open class Meeting: Model {
    public override var pathSegment: String {
        get{
            return "meeting"
        }
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
