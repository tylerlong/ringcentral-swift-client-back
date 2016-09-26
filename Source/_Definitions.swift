//
//  Definitions.swift
//
//
//  Created by Tyler Liu on 8/27/16.
//
//

import Foundation
import ObjectMapper


open class Token: Mappable {
    open var access_token: String?
    open var expires_in: Int?
    open var refresh_token: String?
    open var refresh_token_expires_in: Int?
    open var scope: String?
    open var token_type: String?
    open var owner_id: String?
    open var endpoint_id: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        access_token             <- map["access_token"]
        expires_in               <- map["expires_in"]
        refresh_token            <- map["refresh_token"]
        refresh_token_expires_in <- map["refresh_token_expires_in"]
        scope                    <- map["scope"]
        token_type               <- map["token_type"]
        owner_id                 <- map["owner_id"]
        endpoint_id              <- map["endpoint_id"]
    }
}


open class RestApi: Mappable {
    open var releaseDate: String?
    open var uri: String?
    open var uriString: String?
    open var versionString: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        releaseDate   <- map["releaseDate"]
        uri           <- map["uri"]
        uriString     <- map["uriString"]
        versionString <- map["versionString"]
    }
}
