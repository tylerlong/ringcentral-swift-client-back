import Foundation
import ObjectMapper
open class Account: Model {
    public override var pathSegment: String {
        get{
            return "account"
        }
    }
    // Get Account Info by ID
    func get() -> AccountInfo {
        return AccountInfo(JSONString: "")!
    }
}
