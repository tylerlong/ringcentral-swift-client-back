import Foundation
import ObjectMapper
open class Country: Model {
    public override var pathSegment: String {
        get{
            return "country"
        }
    }
    // Get Country by ID
    open func get() -> FullCountryInfo {
        return FullCountryInfo(JSONString: "")!
    }
}
