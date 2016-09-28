//
//  RestClient.swift
//
//
//  Created by Tyler Liu on 8/24/16.
//
//

import Foundation


open class RestClient {

    open static let sandboxServer = "https://platform.devtest.ringcentral.com"
    open static let productionServer = "https://platform.ringcentral.com"

    open var appKey: String
    open var appSecret: String
    open var server: String
    open var token: Token.PostResponse?

    public init(appKey: String, appSecret: String, server: String) {
        self.appKey = appKey
        self.appSecret = appSecret
        self.server = server
    }

    public convenience init(appKey: String, appSecret: String, production: Bool = false) {
        self.init(appKey: appKey, appSecret: appSecret, server: production ? RestClient.productionServer : RestClient.sandboxServer)
    }

    fileprivate func basicAuthToken() -> String {
        let base64Token = "\(appKey):\(appSecret)".data(using: String.Encoding.utf8)!.base64EncodedString(options: [])
        return "Basic \(base64Token)"
    }

    open func authorize(_ username: String, ext: String, password: String, callback: ((_ token: Token.PostResponse?, _ error: HTTPError?) -> Void)? = nil) {
        let parameters: [String: String] = [
            "username": username,
            "extension": ext,
            "password": password,
            "grant_type": "password"
        ]
        let headers: [String: String] = ["Authorization": basicAuthToken()]
        postString("/restapi/oauth/token", parameters: parameters as [String : AnyObject]?, headers: headers) { string, error in
            if let callback = callback {
                if error == nil {
                    self.token = Token.PostResponse(JSONString: string!)
                    callback(self.token, nil)
                } else {
                    callback(nil, error)
                }
            }
        }
    }

    open func refresh(callback: ((_ token: Token.PostResponse?, _ error: HTTPError?) -> Void)? = nil) {
        if let token = token {
            let parameters: [String: String] = [
                "grant_type": "refresh_token",
                "refresh_token": token.refresh_token!,
                "endpoint_id": token.endpoint_id!
            ]
            let headers: [String: String] = ["Authorization": basicAuthToken()]
            postString("/restapi/oauth/token", parameters: parameters as [String : AnyObject]?, headers: headers) { string, error in
                if let callback = callback {
                    if error == nil {
                        self.token = Token.PostResponse(JSONString: string!)
                        callback(self.token, nil)
                    } else {
                        callback(nil, error)
                    }
                }
            }
        }
    }

    open func revoke(callback: ((Bool) -> Void)? = nil) {
        if let token = token {
            let parameters: [String: String] = ["token": token.access_token!]
            let headers: [String: String] = ["Authorization": basicAuthToken()]
            postString("/restapi/oauth/revoke", parameters: parameters as [String : AnyObject]?, headers: headers) { string, error in
                callback?(error == nil)
            }
        } else {
            callback?(true)
        }
    }

    open func restapi(_ _id: String = "v1.0") -> Restapi
    {
        return Restapi(parent: Model(parent: nil, _id: nil, rc: self), _id: _id)
    }

}
