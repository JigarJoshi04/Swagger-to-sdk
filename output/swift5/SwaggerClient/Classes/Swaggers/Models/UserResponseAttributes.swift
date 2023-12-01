//
// UserResponseAttributes.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct UserResponseAttributes: Codable {

    public var identity: UserResponseAttributesIdentity
    public var profile: UserResponseAttributesProfile

    public init(identity: UserResponseAttributesIdentity, profile: UserResponseAttributesProfile) {
        self.identity = identity
        self.profile = profile
    }


}
