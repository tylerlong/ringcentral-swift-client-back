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
    open var token: Token?

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

    open func authorize(_ username: String, ext: String, password: String, callback: @escaping (_ token: Token?, _ error: HTTPError?) -> Void) {
        let parameters = [
            "username": username,
            "extension": ext,
            "password": password,
            "grant_type": "password"
        ]
        let headers = ["Authorization": basicAuthToken()]
        postString("/restapi/oauth/token", parameters: parameters as [String : AnyObject]?, headers: headers) { string, error in
            if error == nil {
                self.token = Token(JSONString: string!)
                callback(self.token, nil)
            } else {
                callback(nil, error)
            }
        }
    }
    
}
