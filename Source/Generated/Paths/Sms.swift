import Foundation
import ObjectMapper
open class Sms: Model {
    public override var pathSegment: String {
        get{
            return "sms"
        }
    }
    // Create and Send SMS Message
    open func post(callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
}
