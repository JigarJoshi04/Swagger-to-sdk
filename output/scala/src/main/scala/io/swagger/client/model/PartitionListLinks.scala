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
 * @param self  for example: '''/customers/8e9833b5-b844-40a3-8572-4a16d29c53bc/partitions'''
 * @param next  for example: '''/customers/8e9833b5-b844-40a3-8572-4a16d29c53bc/partitions?page[cursor]=qwerty'''
 */
case class PartitionListLinks (
  self: String,
  next: Option[String] = None
)

