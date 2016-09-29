import Foundation
import ObjectMapper
open class CompanyPager: Model {
    public override var pathSegment: String {
        get{
            return "company-pager"
        }
    }
    // Create and Send Pager Message
    open func post() -> MessageInfo {
        return MessageInfo(JSONString: "")!
    }
}
