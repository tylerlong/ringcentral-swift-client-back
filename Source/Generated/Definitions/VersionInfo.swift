import Foundation
import ObjectMapper
open class VersionInfo: Mappable {
    // Canonical URI of API versions
    open var `uri`: String?
    // Version of the RingCentral REST API
    open var `versionString`: String?
    // Release date of this version
    open var `releaseDate`: String?
    // URI part determining the current version
    open var `uriString`: String?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `versionString` <- map["versionString"]
        `releaseDate` <- map["releaseDate"]
        `uriString` <- map["uriString"]
    }
}