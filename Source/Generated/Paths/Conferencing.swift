import Foundation
import ObjectMapper
import Alamofire
open class Conferencing: Model {
    public override var pathSegment: String {
        get{
            return "conferencing"
        }
    }
    // Get Conferencing info
    open func get(parameters: Parameters? = nil, callback: @escaping (_ t: ConferencingInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint(), parameters: parameters) { (t: ConferencingInfo?, error) in
            callback(t, error)
        }
    }
    // Update Conferencing info
    open func put(parameters: Parameters? = nil, callback: @escaping (_ t: ConferencingInfo?, _ error: HTTPError?) -> Void) {
        rc.put(self.endpoint(), parameters: parameters) { (t: ConferencingInfo?, error) in
            callback(t, error)
        }
    }
}
