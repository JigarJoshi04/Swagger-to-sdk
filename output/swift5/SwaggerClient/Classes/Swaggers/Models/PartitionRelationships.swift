//
// PartitionRelationships.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct PartitionRelationships: Codable {

    public var ownedByCustomer: CustomerRelationship

    public init(ownedByCustomer: CustomerRelationship) {
        self.ownedByCustomer = ownedByCustomer
    }


}
