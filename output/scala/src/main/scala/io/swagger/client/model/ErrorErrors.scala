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
 * @param id A unique identifier for this particular occurrence of the problem. for example: '''e31f00cc-7a5d-46c2-a272-771e6a8d6ff0'''
 * @param code An application-specific error code, expressed as a string value. for example: '''200-0201'''
 * @param status The HTTP status code applicable to this problem, expressed as a string value. for example: '''403'''
 * @param title A short, human-readable summary of the problem that SHOULD NOT change from occurrence to occurrence of the problem, except for purposes of localization. for example: '''Forbidden to perform this action'''
 * @param detail a human-readable explanation specific to this occurrence of the problem. Like title, this field’s value can be localized. for example: '''Forbidden to perform this action'''
 */
case class ErrorErrors (
  id: String,
  code: Option[String] = None,
  status: String,
  title: String,
  detail: Option[String] = None
)
