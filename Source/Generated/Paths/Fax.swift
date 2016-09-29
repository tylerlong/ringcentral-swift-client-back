import Foundation
import ObjectMapper
open class Fax: Model {
    public override var pathSegment: String {
        get{
            return "fax"
        }
    }
    // Create and Send Fax Message
    open func post(callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
}
