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

export interface CustomerRelationshipData { 
    type: CustomerRelationshipData.TypeEnum;
    id: string;
}
export namespace CustomerRelationshipData {
    export type TypeEnum = 'Customer';
    export const TypeEnum = {
        Customer: 'Customer' as TypeEnum
    };
}