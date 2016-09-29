import Foundation
import ObjectMapper
open class Country: Model {
    public override var pathSegment: String {
        get{
            return "country"
        }
    }
    // Get Country by ID
    open func get(callback: @escaping (_ t: FullCountryInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: FullCountryInfo?, error) in
            callback(t, error)
        }
    }
}
