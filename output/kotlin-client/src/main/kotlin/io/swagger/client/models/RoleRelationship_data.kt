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
package io.swagger.client.models


/**
 * 
 * @param type 
 * @param id 
 */
data class RoleRelationshipData (

    val type: RoleRelationshipData.Type,
    val id: kotlin.String
) {
    /**
    * 
    * Values: ROLE
    */
    enum class Type(val value: kotlin.String){
        ROLE("Role");
    }
}