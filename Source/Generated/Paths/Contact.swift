import Foundation
import ObjectMapper
open class Contact: Model {
    public override var pathSegment: String {
        get{
            return "contact"
        }
    }
    // Delete Contact by ID
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Get Contact by ID
    open func get(callback: @escaping (_ t: PersonalContactInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: PersonalContactInfo?, error) in
            callback(t, error)
        }
    }
    // Update Contact by ID
    open func put(callback: @escaping (_ t: PersonalContactInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint()) { (t: PersonalContactInfo?, error) in
            callback(t, error)
        }
    }
}
