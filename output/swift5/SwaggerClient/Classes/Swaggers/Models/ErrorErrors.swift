//
// ErrorErrors.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ErrorErrors: Codable {

    /** A unique identifier for this particular occurrence of the problem. */
    public var _id: String
    /** An application-specific error code, expressed as a string value. */
    public var code: String?
    /** The HTTP status code applicable to this problem, expressed as a string value. */
    public var status: String
    /** A short, human-readable summary of the problem that SHOULD NOT change from occurrence to occurrence of the problem, except for purposes of localization. */
    public var title: String
    /** a human-readable explanation specific to this occurrence of the problem. Like title, this field’s value can be localized. */
    public var detail: String?

    public init(_id: String, code: String? = nil, status: String, title: String, detail: String? = nil) {
        self._id = _id
        self.code = code
        self.status = status
        self.title = title
        self.detail = detail
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case code
        case status
        case title
        case detail
    }

}
