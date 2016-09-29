import Foundation
import ObjectMapper
open class ProfileImage: Model {
    public override var pathSegment: String {
        get{
            return "profile-image"
        }
    }
    // Get Profile Image
    open func get() -> NSData {
        return NSData()
    }
    // Update Profile Image
    open func put(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.putString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Update Profile Image (same as PUT)
    open func post(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.postString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Get Scaled Profile Image
    open func get() -> NSData {
        return NSData()
    }
}
