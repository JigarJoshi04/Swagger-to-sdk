/*
 * Accounts API
 *
 * Accounts API 
 *
 * API version: 0.9.5
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */
package swagger

type Customer struct {
	Type_ string `json:"type"`
	Id string `json:"id"`
	Attributes *CustomerAttributes `json:"attributes"`
	Meta *CustomerMeta `json:"meta,omitempty"`
}