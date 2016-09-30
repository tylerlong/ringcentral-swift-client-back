import Foundation
import ObjectMapper
import Alamofire
open class ExternalUserInfo: Mappable {
    // User type of a meeting account
    open var `accountId`: String?
    // Meeting account user identifier
    open var `userId`: String?
    // Meeting account user token
    open var `userToken`: String?
    // Meeting account user type
    open var `userType`: Int?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `accountId` <- map["accountId"]
        `userId` <- map["userId"]
        `userToken` <- map["userToken"]
        `userType` <- map["userType"]
    }
    open func toParameters() -> Parameters {
        return [:]
    }
}
