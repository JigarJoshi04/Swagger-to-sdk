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
 * @param `type`  for example: '''Partition'''
 * @param id  for example: '''uuid'''
 * @param attributes 
 * @param relationships 
 */
case class Partition (
  `type`: String,
  id: String,
  attributes: Partition_attributes,
  relationships: Option[Partition_relationships] = None
)

