import Foundation
import ObjectMapper
import Alamofire
open class ExtensionInfo_Request_ContactInfo: Mappable {
    // Contact information
    open var `contact`: ContactInfo?
    // Region data (timezone, home country, language)
    open var `regionalSettings`: ExtensionInfo_Request_ContactInfo_RegionalSettings?
    // Specifies extension configuration wizard state (web service setup). The default value is 'NotStarted'
    open var `setupWizardState`: String?
    // Extension user department
    open var `department`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `contact` <- map["contact"]
        `regionalSettings` <- map["regionalSettings"]
        `setupWizardState` <- map["setupWizardState"]
        `department` <- map["department"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
