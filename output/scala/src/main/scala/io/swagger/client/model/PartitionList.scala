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
 * @param links 
 * @param data 
 * @param included Included resources based in `include` query param
 */
case class PartitionList (
  links: PartitionList_links,
  data: List[Partition],
  included: Option[List[PartitionList_included]] = None
)
