//
// ModelError.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** [More error information](docs/api-errors.html)  */

public struct ModelError: Codable {

    public var errors: [ErrorErrors]

    public init(errors: [ErrorErrors]) {
        self.errors = errors
    }


}
