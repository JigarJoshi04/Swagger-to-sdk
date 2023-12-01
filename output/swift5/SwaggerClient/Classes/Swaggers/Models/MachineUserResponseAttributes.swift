//
// MachineUserResponseAttributes.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MachineUserResponseAttributes: Codable {

    /** Name of Machine User */
    public var name: String
    /** Purpose of this machine user */
    public var purpose: String
    public var state: MachineUserState
    public var oAuth: MachineUserOAuth

    public init(name: String, purpose: String, state: MachineUserState, oAuth: MachineUserOAuth) {
        self.name = name
        self.purpose = purpose
        self.state = state
        self.oAuth = oAuth
    }


}
