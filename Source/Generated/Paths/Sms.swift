import Foundation
import ObjectMapper
import Alamofire
open class Sms: Model {
    public override var pathSegment: String {
        get{
            return "sms"
        }
    }
    // Create and Send SMS Message
    open func post(parameters: Parameters? = nil, callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
}
