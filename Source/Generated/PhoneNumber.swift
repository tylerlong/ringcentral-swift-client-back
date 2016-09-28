import Foundation
import ObjectMapper
open class PhoneNumber: Model {
    public override var pathSegment: String {
        get{
            return "phone-number"
        }
    }
    // Get Phone Number by ID
    func get() -> PhoneNumberInfo {
        return PhoneNumberInfo(JSONString: "")!
    }
}
