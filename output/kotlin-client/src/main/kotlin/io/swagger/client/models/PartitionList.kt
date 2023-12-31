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
package io.swagger.client.models

import io.swagger.client.models.Partition
import io.swagger.client.models.PartitionListIncluded
import io.swagger.client.models.PartitionListLinks

/**
 * 
 * @param links 
 * @param &#x60;data&#x60; 
 * @param included Included resources based in `include` query param
 */
data class PartitionList (

    val links: PartitionListLinks,
    val `data`: kotlin.Array<Partition>,
    /* Included resources based in `include` query param */
    val included: kotlin.Array<PartitionListIncluded>? = null
) {
}