import Foundation
import ObjectMapper
open class AnsweringRuleInfo: Mappable {
    // Canonical URI to the answering rule resource
    open var `uri`: String?
    // Internal identifier of an asnwering rule
    open var `id`: String?
    // Type of an answering rule
    open var `type`: String?
    // Name of an answering rule specified by user
    open var `name`: String?
    // Specifies if an answering rule is active or inactive
    open var `enabled`: Bool?
    // Schedule when an answering rule should be applied
    open var `schedule`: ScheduleInfo?
    // Answering rules are applied when calling to selected number(s)
    open var `calledNumbers`: [AnsweringRuleInfo_CalleeInfo]?
    // Answering rules are applied when calls are received from specified caller(s)
    open var `callers`: [AnsweringRuleInfo_CallerInfo]?
    // Specifies how incoming calls are forwarded
    open var `callHandlingAction`: String?
    // Forwarding parameters. Returned if 'ForwardCalls' is specified in 'callHandlingAction'. These settings determine the forwarding numbers to which the call will be forwarded
    open var `forwarding`: ForwardingInfo?
    // Unconditional forwarding parameters. Returned if 'UnconditionalForwarding' is specified in 'callHandlingAction'
    open var `unconditionalForwarding`: UnconditionalForwardingInfo?
    // Specifies whether to take a voicemail and who should do it
    open var `voicemail`: VoicemailInfo?
    // Predefined greetings applied for an answering rule
    open var `greetings`: [GreetingInfo]?
    required public init?(map: Map) {
    }
    open func mapping(map: Map) {
        `uri` <- map["uri"]
        `id` <- map["id"]
        `type` <- map["type"]
        `name` <- map["name"]
        `enabled` <- map["enabled"]
        `schedule` <- map["schedule"]
        `calledNumbers` <- map["calledNumbers"]
        `callers` <- map["callers"]
        `callHandlingAction` <- map["callHandlingAction"]
        `forwarding` <- map["forwarding"]
        `unconditionalForwarding` <- map["unconditionalForwarding"]
        `voicemail` <- map["voicemail"]
        `greetings` <- map["greetings"]
    }
}
