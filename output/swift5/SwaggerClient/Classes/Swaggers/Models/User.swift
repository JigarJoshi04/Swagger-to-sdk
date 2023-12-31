//
// User.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct User: Codable {

    /** type of the resource */
    public var type: String
    /** ID of the user  */
    public var _id: String
    public var attributes: UserResponseAttributes?
    public var relationships: UserRelationships?

    public init(type: String, _id: String, attributes: UserResponseAttributes? = nil, relationships: UserRelationships? = nil) {
        self.type = type
        self._id = _id
        self.attributes = attributes
        self.relationships = relationships
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case _id = "id"
        case attributes
        case relationships
    }

}
