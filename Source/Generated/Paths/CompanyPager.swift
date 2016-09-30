import Foundation
import ObjectMapper
import Alamofire
open class CompanyPager: Model {
    public override var pathSegment: String {
        get{
            return "company-pager"
        }
    }
    // Create and Send Pager Message
    open func post(parameters: Parameters? = nil, callback: @escaping (_ t: MessageInfo?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: MessageInfo?, error) in
            callback(t, error)
        }
    }
}
