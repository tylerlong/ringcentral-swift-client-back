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
    // Update Profile Image
    open func put(parameters: Binary? = nil, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.putString(self.endpoint(), parameters: parameters?.toParameters()) { string, error in
            callback(error)
        }
    }
    // Update Profile Image (same as PUT)
    open func post(parameters: Binary? = nil, callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.postString(self.endpoint(), parameters: parameters?.toParameters()) { string, error in
            callback(error)
        }
    }
}
