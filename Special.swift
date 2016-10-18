//
//  Special.swift
//  RingCentral
//
//  Created by Tyler Liu on 10/18/16.
//
//

import Alamofire


// Extension put requestBody is an enum
public protocol ExtensionParameters {
    func toParameters() -> Parameters
}
extension ExtensionInfo_Request_StatusInfo: ExtensionParameters {
}
extension ExtensionInfo_Request_ContactInfo: ExtensionParameters {
}
extension ExtensionInfo_Request_PasswordPIN: ExtensionParameters {
}
extension ExtensionInfo_Request_PartnerId: ExtensionParameters {
}
extension ExtensionInfo_Request_Provision: ExtensionParameters {
}
