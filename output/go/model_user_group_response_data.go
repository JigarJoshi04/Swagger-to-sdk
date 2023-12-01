/*
 * Accounts API
 *
 * Accounts API 
 *
 * API version: 0.9.5
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */
package swagger

type UserGroupResponseData struct {
	Type_ string `json:"type"`
	Id string `json:"id"`
	Attributes *UserGroupResponseAttribute `json:"attributes"`
	Relationships *UserGroupRelationships `json:"relationships,omitempty"`
}