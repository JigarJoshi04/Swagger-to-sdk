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
 * @param self  for example: '''/me/usergroups'''
 * @param next  for example: '''/me/usergroups?page[cursor]=qwerty'''
 */
case class UserGroupListLinks (
  self: String,
  next: Option[String] = None
)

