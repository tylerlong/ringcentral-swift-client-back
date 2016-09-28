import Foundation
import ObjectMapper
open class ExtensionInfo_Request_Provision: Mappable {
    // Mandatory. Resulting extension status
    open var `status`: String?
    // Mandatory. Extension user contact information
    open var `contact`: ExtensionInfo_Request_Provision_ContactInfo?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `status` <- map["status"]
        `contact` <- map["contact"]
    }
}
