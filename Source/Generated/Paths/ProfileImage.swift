import Foundation
import ObjectMapper
import Alamofire
open class ProfileImage: Model {
    public override var pathSegment: String {
        get{
            return "profile-image"
        }
    }
    // Get Profile Image
    open func get(callback: @escaping (_ t: Binary?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: Binary?, error) in
            callback(t, error)
        }
    }
}
