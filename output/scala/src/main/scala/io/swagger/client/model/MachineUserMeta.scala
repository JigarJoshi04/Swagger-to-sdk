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

import java.util.Date

/**
 * @param createdAt 
 * @param updatedAt 
 * @param createdBy  for example: '''abc'''
 * @param updatedBy  for example: '''cde'''
 */
case class MachineUserMeta (
  createdAt: Date,
  updatedAt: Option[Date] = None,
  createdBy: Option[String] = None,
  updatedBy: Option[String] = None
)

