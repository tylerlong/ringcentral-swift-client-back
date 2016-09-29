import Foundation
import ObjectMapper
open class Language: Model {
    public override var pathSegment: String {
        get{
            return "language"
        }
    }
    // Get Language by ID
    open func get(callback: @escaping (_ t: LanguageInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: LanguageInfo?, error) in
            callback(t, error)
        }
    }
}
