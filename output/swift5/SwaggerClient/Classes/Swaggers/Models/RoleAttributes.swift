//
// RoleAttributes.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct RoleAttributes: Codable {

    public var technicalName: String
    public var displayName: String
    public var permissions: [String]

    public init(technicalName: String, displayName: String, permissions: [String]) {
        self.technicalName = technicalName
        self.displayName = displayName
        self.permissions = permissions
    }


}
