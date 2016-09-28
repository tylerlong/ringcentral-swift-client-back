import Foundation
import ObjectMapper
open class Language: Model {
    public override var pathSegment: String {
        get{
            return "language"
        }
    }
    // Get Language by ID
    func get() -> LanguageInfo {
        return LanguageInfo(JSONString: "")!
    }
}
