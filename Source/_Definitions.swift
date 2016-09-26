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
    var access_token: String?
    var expires_in: Int?
    var refresh_token: String?
    var refresh_token_expires_in: Int?
    var scope: String?
    var token_type: String?
    var owner_id: String?
    var endpoint_id: String?

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
    var releaseDate: String?
    var uri: String?
    var uriString: String?
    var versionString: String?

    required public init?(map: Map) {

    }

    open func mapping(map: Map) {
        releaseDate   <- map["releaseDate"]
        uri           <- map["uri"]
        uriString     <- map["uriString"]
        versionString <- map["versionString"]
    }
}
