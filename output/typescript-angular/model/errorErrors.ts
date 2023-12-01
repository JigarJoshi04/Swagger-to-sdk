/**
 * Accounts API
 * Accounts API 
 *
 * OpenAPI spec version: 0.9.5
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */

export interface ErrorErrors { 
    /**
     * A unique identifier for this particular occurrence of the problem.
     */
    id: string;
    /**
     * An application-specific error code, expressed as a string value.
     */
    code?: string;
    /**
     * The HTTP status code applicable to this problem, expressed as a string value.
     */
    status: string;
    /**
     * A short, human-readable summary of the problem that SHOULD NOT change from occurrence to occurrence of the problem, except for purposes of localization.
     */
    title: string;
    /**
     * a human-readable explanation specific to this occurrence of the problem. Like title, this field’s value can be localized.
     */
    detail?: string;
}