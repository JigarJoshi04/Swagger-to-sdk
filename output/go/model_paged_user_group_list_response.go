/*
 * Accounts API
 *
 * Accounts API 
 *
 * API version: 0.9.5
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */
package swagger

type PagedUserGroupListResponse struct {
	Data *[]UserGroupResponseData `json:"data"`
	Links *PagedUserGroupListResponseLinks `json:"links"`
}
