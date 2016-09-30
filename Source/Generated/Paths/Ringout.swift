import Foundation
import ObjectMapper
import Alamofire
open class Ringout: Model {
    public override var pathSegment: String {
        get{
            return "ringout"
        }
    }
    // Initiate RingOut Call
    open func post(parameters: Parameters? = nil, callback: @escaping (_ t: RingOutInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: RingOutInfo?, error) in
            callback(t, error)
        }
    }
    // Cancel RingOut Call
    open func delete(callback: @escaping (_ error: HTTPError?) -> Void) {
        rc.deleteString(self.endpoint()) { string, error in
            callback(error)
        }
    }
    // Get RingOut Call Status
    open func get(callback: @escaping (_ t: RingOutInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: RingOutInfo?, error) in
            callback(t, error)
        }
    }
}
