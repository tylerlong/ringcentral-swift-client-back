import Foundation
import ObjectMapper
import Alamofire
open class ServiceInfo: Model {
    public override var pathSegment: String {
        get{
            return "service-info"
        }
    }
    // Get Meeting Service Info
    open func get(callback: @escaping (_ t: MeetingServiceInfo?, _ error: HTTPError?) -> Void) {
        rc.get(self.endpoint()) { (t: MeetingServiceInfo?, error) in
            callback(t, error)
        }
    }
}
