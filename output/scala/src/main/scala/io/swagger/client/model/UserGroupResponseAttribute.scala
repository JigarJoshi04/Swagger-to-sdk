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
 * @param name Name of the user group  for example: '''CustomerOperator'''
 * @param description Description of the user group  for example: '''Customer Operator for managing user groups'''
 * @param isMachineEnabled  for example: '''true'''
 * @param isSystemDefined  for example: '''true'''
 */
case class UserGroupResponseAttribute (
  name: String,
  description: String,
  isMachineEnabled: Option[Boolean] = None,
  isSystemDefined: Option[Boolean] = None
)

