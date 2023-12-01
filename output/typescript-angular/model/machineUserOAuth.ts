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

export interface MachineUserOAuth { 
    /**
     * ID of client
     */
    clientId: string;
    /**
     * issuer of oAuth
     */
    issuer: string;
    /**
     * Audience
     */
    audience: string;
    /**
     * Time of secret creation
     */
    secretCreated: string;
    /**
     * time of secret rotation
     */
    secretRotated: string;
}