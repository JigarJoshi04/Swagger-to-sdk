/*
 * Accounts API
 *
 * Accounts API 
 *
 * API version: 0.9.5
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */
package swagger

type MachineUserState struct {
	// Status of Machine User
	Current string `json:"current"`
	// Status since time
	Since string `json:"since"`
	// was set to this status by(ID)
	ActionBy string `json:"actionBy"`
}
