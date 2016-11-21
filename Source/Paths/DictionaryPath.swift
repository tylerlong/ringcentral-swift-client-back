import Foundation
import ObjectMapper
import Alamofire
open class DictionaryPath: PathSegment {
    public override var pathSegment: String {
        get{
            return "dictionary"
        }
    }
    open func `country`(_ _id: String? = nil) -> CountryPath {
        return CountryPath(parent: self, _id: _id)
    }
    open func `language`(_ _id: String? = nil) -> LanguagePath {
        return LanguagePath(parent: self, _id: _id)
    }
    open func `location`() -> LocationPath {
        return LocationPath(parent: self)
    }
    open func `state`(_ _id: String? = nil) -> StatePath {
        return StatePath(parent: self, _id: _id)
    }
    open func `timezone`(_ _id: String? = nil) -> TimezonePath {
        return TimezonePath(parent: self, _id: _id)
    }
}
