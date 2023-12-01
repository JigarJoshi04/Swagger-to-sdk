//
// MachineUser.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MachineUser: Codable {

    public enum ModelType: String, Codable { 
        case machineUser = "MachineUser"
    }
    public var type: ModelType
    /** ID of the Machine User  */
    public var _id: String
    public var attributes: MachineUserResponseAttributes?
    public var relationships: MachineUserRelationships?
    public var meta: MachineUserMeta?

    public init(type: ModelType, _id: String, attributes: MachineUserResponseAttributes? = nil, relationships: MachineUserRelationships? = nil, meta: MachineUserMeta? = nil) {
        self.type = type
        self._id = _id
        self.attributes = attributes
        self.relationships = relationships
        self.meta = meta
    }

    public enum CodingKeys: String, CodingKey { 
        case type
        case _id = "id"
        case attributes
        case relationships
        case meta
    }

}
