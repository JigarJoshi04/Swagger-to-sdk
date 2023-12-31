//
// PartitionListLinks.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PartitionListLinks: Codable {

    public var _self: String
    public var next: String?

    public init(_self: String, next: String? = nil) {
        self._self = _self
        self.next = next
    }

    public enum CodingKeys: String, CodingKey { 
        case _self = "self"
        case next
    }

}
