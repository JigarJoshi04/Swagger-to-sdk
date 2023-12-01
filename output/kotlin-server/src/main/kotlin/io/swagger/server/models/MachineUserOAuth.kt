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
*/package io.swagger.server.models


/**
 *  * @param clientId ID of client * @param issuer issuer of oAuth * @param audience Audience * @param secretCreated Time of secret creation * @param secretRotated time of secret rotation*/
data class MachineUserOAuth (        /* ID of client */
        val clientId: kotlin.String,        /* issuer of oAuth */
        val issuer: kotlin.String,        /* Audience */
        val audience: kotlin.String,        /* Time of secret creation */
        val secretCreated: kotlin.String,        /* time of secret rotation */
        val secretRotated: kotlin.String
) {
}