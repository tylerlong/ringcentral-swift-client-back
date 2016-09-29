import Foundation
import ObjectMapper
open class Contact: Model {
    public override var pathSegment: String {
        get{
            return "contact"
        }
    }
    // Delete Contact by ID
    open func delete() {
    }
    // Get Contact by ID
    open func get() -> PersonalContactInfo {
        return PersonalContactInfo(JSONString: "")!
    }
    // Update Contact by ID
    open func put() -> PersonalContactInfo {
        return PersonalContactInfo(JSONString: "")!
    }
}
