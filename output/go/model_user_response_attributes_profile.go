/*
 * Accounts API
 *
 * Accounts API 
 *
 * API version: 0.9.5
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */
package swagger

type UserResponseAttributesProfile struct {
	// free text user info
	FreeText string `json:"freeText,omitempty"`
	// user's job description
	JobDescription string `json:"jobDescription,omitempty"`
	// user's contact phone number
	Phone string `json:"phone,omitempty"`
	// user's profile image
	ProfileImage string `json:"profileImage,omitempty"`
}