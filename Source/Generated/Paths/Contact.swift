import Foundation
import ObjectMapper
open class Contact: Model {
    public override var pathSegment: String {
        get{
            return "contact"
        }
    }
    // Delete Contact by ID
    func delete() {
    }
    // Get Contact by ID
    func get() -> PersonalContactInfo {
        return PersonalContactInfo(JSONString: "")!
    }
    // Update Contact by ID
    func put() -> PersonalContactInfo {
        return PersonalContactInfo(JSONString: "")!
    }
}
