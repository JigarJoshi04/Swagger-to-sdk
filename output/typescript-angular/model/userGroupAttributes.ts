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

export interface UserGroupAttributes { 
    /**
     * Name of the user group 
     */
    name: string;
    /**
     * Description of the user group 
     */
    description: string;
    isMachineEnabled?: boolean;
    isSystemDefined?: boolean;
}