import Foundation
import ObjectMapper
open class Dictionary: Model {
    public override var pathSegment: String {
        get{
            return "dictionary"
        }
    }
    func `country`(_id: String? = nil) -> Country {
        return Country(parent: self, _id: _id)
    }
    func `language`(_id: String? = nil) -> Language {
        return Language(parent: self, _id: _id)
    }
    func `location`() -> Location {
        return Location(parent: self)
    }
    func `state`(_id: String? = nil) -> State {
        return State(parent: self, _id: _id)
    }
    func `timezone`(_id: String? = nil) -> Timezone {
        return Timezone(parent: self, _id: _id)
    }
}
