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
 * @param `type` 
 * @param id ID of the Machine User  for example: '''8e9833b5-b844-40a3-8572-4a16d29c53bc'''
 * @param attributes 
 * @param relationships 
 * @param meta 
 */
case class MachineUser (
  `type`: String,
  id: String,
  attributes: Option[MachineUserResponseAttributes] = None,
  relationships: Option[MachineUser_relationships] = None,
  meta: Option[MachineUser_meta] = None
)

