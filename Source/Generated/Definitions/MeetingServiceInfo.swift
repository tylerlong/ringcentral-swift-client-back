import Foundation
import ObjectMapper
open class MeetingServiceInfo: Mappable {
    // Canonical URI of a meeting service info resource
    open var `uri`: String?
    // URI to retrieve support information for meetings functionality
    open var `supportUri`: String?
    // URI to retrieve international dial in numbers
    open var `intlDialInNumbersUri`: String?
    // External user data
    open var `externalUserInfo`: ExternalUserInfo?
    // Dial-in numbers data
    open var `dialInNumbers`: DialInNumbers?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `supportUri` <- map["supportUri"]
        `intlDialInNumbersUri` <- map["intlDialInNumbersUri"]
        `externalUserInfo` <- map["externalUserInfo"]
        `dialInNumbers` <- map["dialInNumbers"]
    }
}
