import Foundation
import ObjectMapper
import Alamofire
open class Authorize: Model {
    public override var pathSegment: String {
        get{
            return "authorize"
        }
    }
    // OAuth2 Authorize
    open func post(callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint()) { (t: PostResponse?, error) in
            callback(t, error)
        }
    }
    // OAuth2 Authorize
    open func post(parameters: Parameters, callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        rc.post(self.endpoint(), parameters: parameters) { (t: PostResponse?, error) in
            callback(t, error)
        }
    }
    // OAuth2 Authorize
    open func post(parameters: PostParameters, callback: @escaping (_ t: PostResponse?, _ error: HTTPError?) -> Void) {
        post(parameters: parameters.toParameters(), callback: callback)
    }
    open class PostParameters: Mappable {
        // Must be set to code
        open var `response_type`: String?
        // Required. Enter your application key (Production or Sandbox) here
        open var `client_id`: String?
        // Required. This is a callback URI which determines where the response will be sent to. The value of this parameter must exactly match one of the URIs you have provided for your app upon registration. This URI can be HTTP/HTTPS address for web applications or custom scheme URI for mobile or desktop applications.
        open var `redirect_uri`: String?
        // Optional, recommended. An opaque value used by the client to maintain state between the request and callback. The authorization server includes this value when redirecting the user-agent back to the client. The parameter should be used for preventing cross-site request forgery
        open var `state`: String?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `response_type` <- map["response_type"]
            `client_id` <- map["client_id"]
            `redirect_uri` <- map["redirect_uri"]
            `state` <- map["state"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["response_type"] = self.response_type
            result["client_id"] = self.client_id
            result["redirect_uri"] = self.redirect_uri
            result["state"] = self.state
            return result
        }
    }
    open class PostResponse: Mappable {
        // The authorization code returned for your application
        open var `code`: String?
        // The remaining lifetime of the authorization code
        open var `expires_in`: Int?
        // This parameter will be included in response if it was specified in the client authorization request. The value will be copied from the one received from the client
        open var `state`: String?
        required public init?(map: Map) {
        }
        open func mapping(map: Map) {
            `code` <- map["code"]
            `expires_in` <- map["expires_in"]
            `state` <- map["state"]
        }
        open func toParameters() -> Parameters {
            var result = [String: Any]()
            result["code"] = self.code
            result["expires_in"] = self.expires_in
            result["state"] = self.state
            return result
        }
    }
}
