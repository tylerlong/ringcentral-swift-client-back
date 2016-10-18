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
    public init() {
    }
    convenience public init(accountId: String? = nil, userId: String? = nil, userToken: String? = nil, userType: Int? = nil) {
        self.init()
        self.accountId = `accountId`
        self.userId = `userId`
        self.userToken = `userToken`
        self.userType = `userType`
    }
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `accountId` <- map["accountId"]
        `userId` <- map["userId"]
        `userToken` <- map["userToken"]
        `userType` <- map["userType"]
    }
    open func toParameters() -> Parameters {
        var result = [String: Any]()
        result["accountId"] = self.accountId
        result["userId"] = self.userId
        result["userToken"] = self.userToken
        result["userType"] = self.userType
        return result
    }
}
