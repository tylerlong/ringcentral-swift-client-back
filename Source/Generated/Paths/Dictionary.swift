import Foundation
import ObjectMapper
open class Dictionary: Model {
    public override var pathSegment: String {
        get{
            return "dictionary"
        }
    }
    open func `country`(_ _id: String? = nil) -> Country {
        return Country(parent: self, _id: _id)
    }
    open func `language`(_ _id: String? = nil) -> Language {
        return Language(parent: self, _id: _id)
    }
    open func `location`() -> Location {
        return Location(parent: self)
    }
    open func `state`(_ _id: String? = nil) -> State {
        return State(parent: self, _id: _id)
    }
    open func `timezone`(_ _id: String? = nil) -> Timezone {
        return Timezone(parent: self, _id: _id)
    }
}
