//
//  Http.swift
//
//
//  Created by Tyler Liu on 8/27/16.
//
//

import Foundation
import Alamofire
import ObjectMapper


public struct HTTPError {
    var statusCode: Int
    var message: String
}


extension RestClient {

    public func getString(_ endpoint: String, parameters: [String: AnyObject]? = nil, encoding: ParameterEncoding = URLEncoding.default, headers: [String: String]? = nil, callback: @escaping (_ string: String?, _ error: HTTPError?) -> Void) {
        requestString(endpoint, method: .get, parameters: parameters, encoding: encoding, headers: headers, callback: callback)
    }
    public func get<T: Mappable>(_ endpoint: String, parameters: [String: AnyObject]? = nil, encoding: ParameterEncoding = URLEncoding.default, headers: [String: String]? = nil, callback: @escaping (_ t: T?, _ error: HTTPError?) -> Void) {
        getString(endpoint, parameters: parameters, encoding: encoding, headers: headers) { string, error in
            callback(T(JSONString: string!), error)
        }
    }

    public func postString(_ endpoint: String, parameters: [String: AnyObject]? = nil, encoding: ParameterEncoding = URLEncoding.default, headers: [String: String]? = nil, callback: @escaping (_ string: String?, _ error: HTTPError?) -> Void) {
        requestString(endpoint, method: .post, parameters: parameters, encoding: encoding, headers: headers, callback: callback)
    }

    public func requestString(_ endpoint: String, method: HTTPMethod, parameters: [String: AnyObject]? = nil, encoding: ParameterEncoding = URLEncoding.default, headers: [String: String]? = nil, callback: @escaping (_ string: String?, _ error: HTTPError?) -> Void) {
        let urlString = URL(string: server)!.appendingPathComponent(endpoint).absoluteString
        var headers = headers ?? [:]
        if token != nil && headers["Authorization"] == nil {
            headers["Authorization"] = "Bearer \(token!.access_token!)"
        }
        let request = Alamofire.request(urlString, method: method, parameters: parameters, encoding: encoding, headers: headers)
        request.responseString {
            response in
            let statusCode = response.response!.statusCode
            if statusCode >= 200 && statusCode < 300 {
                callback(response.result.value!, nil)
            } else {
                callback(nil, HTTPError(statusCode: statusCode, message: response.result.value!))
            }
        }
    }
    
}
