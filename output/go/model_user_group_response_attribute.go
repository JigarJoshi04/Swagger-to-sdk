/*
 * Accounts API
 *
 * Accounts API 
 *
 * API version: 0.9.5
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */
package swagger

type UserGroupResponseAttribute struct {
	// Name of the user group 
	Name string `json:"name"`
	// Description of the user group 
	Description string `json:"description"`
	IsMachineEnabled bool `json:"isMachineEnabled,omitempty"`
	IsSystemDefined bool `json:"isSystemDefined,omitempty"`
}
