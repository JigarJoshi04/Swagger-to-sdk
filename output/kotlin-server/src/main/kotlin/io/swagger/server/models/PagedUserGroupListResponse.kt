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
*/package io.swagger.server.models

import io.swagger.server.models.PagedUserGroupListResponseLinks
import io.swagger.server.models.UserGroupListResponseData

/**
 *  * @param &#x60;data&#x60;  * @param links */
data class PagedUserGroupListResponse (        val `data`: UserGroupListResponseData,        val links: PagedUserGroupListResponseLinks
) {
}