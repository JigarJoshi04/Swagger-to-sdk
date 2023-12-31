/*
 * Accounts API
 *
 * Accounts API 
 *
 * API version: 0.9.5
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */
package swagger

// user identity details
type UserResponseAttributesIdentity struct {
	// email address of the user
	EmailId string `json:"emailId"`
	// horizon ID of the user within Siemens ID
	ExternalId string `json:"externalId"`
	// user's family name
	FamilyName string `json:"familyName,omitempty"`
	// user's full name
	FullName string `json:"fullName,omitempty"`
	// user's given name
	GivenName string `json:"givenName"`
}
