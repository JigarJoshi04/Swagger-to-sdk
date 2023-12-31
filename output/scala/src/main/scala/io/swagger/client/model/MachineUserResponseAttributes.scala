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
package io.swagger.client.model


/**
 * @param name Name of Machine User for example: '''Machine User 1'''
 * @param purpose Purpose of this machine user for example: '''running automated tests'''
 * @param state 
 * @param oAuth 
 */
case class MachineUserResponseAttributes (
  name: String,
  purpose: String,
  state: MachineUserState,
  oAuth: MachineUserOAuth
)

