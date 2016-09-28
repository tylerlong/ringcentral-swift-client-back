import Foundation
import ObjectMapper
open class AnsweringRule: Model {
    public override var pathSegment: String {
        get{
            return "answering-rule"
        }
    }
    // Delete Answering Rule by ID
    func delete() {
    }
    // Get Custom Answering Rule by ID
    func get() -> AnsweringRuleInfo {
        return AnsweringRuleInfo(JSONString: "")!
    }
    // Update Answering Rule by ID
    func put() -> AnsweringRuleInfo {
        return AnsweringRuleInfo(JSONString: "")!
    }
}
