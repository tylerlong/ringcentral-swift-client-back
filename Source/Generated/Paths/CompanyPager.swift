import Foundation
import ObjectMapper
open class CompanyPager: Model {
    public override var pathSegment: String {
        get{
            return "company-pager"
        }
    }
    // Create and Send Pager Message
    open func post(callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
}
