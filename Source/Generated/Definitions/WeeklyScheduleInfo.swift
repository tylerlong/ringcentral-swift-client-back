import Foundation
import ObjectMapper
open class WeeklyScheduleInfo: Mappable {
    // Time intervals for a particular day
    open var `monday`: [TimeInterval]?
    // Time intervals for a particular day
    open var `tuesday`: [TimeInterval]?
    // Time intervals for a particular day
    open var `wednesday`: [TimeInterval]?
    // Time intervals for a particular day
    open var `thursday`: [TimeInterval]?
    // Time intervals for a particular day
    open var `friday`: [TimeInterval]?
    // Time intervals for a particular day
    open var `saturday`: [TimeInterval]?
    // Time intervals for a particular day
    open var `sunday`: [TimeInterval]?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `monday` <- map["monday"]
        `tuesday` <- map["tuesday"]
        `wednesday` <- map["wednesday"]
        `thursday` <- map["thursday"]
        `friday` <- map["friday"]
        `saturday` <- map["saturday"]
        `sunday` <- map["sunday"]
    }
}
