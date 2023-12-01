/*
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

package io.swagger.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.v3.oas.annotations.media.Schema;
import java.io.IOException;
/**
 * user identity details
 */
@Schema(description = "user identity details")
@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2023-12-01T06:30:31.697361Z[Etc/UTC]")
public class UserResponseAttributesIdentity {
  @SerializedName("emailId")
  private String emailId = null;

  @SerializedName("externalId")
  private String externalId = null;

  @SerializedName("familyName")
  private String familyName = null;

  @SerializedName("fullName")
  private String fullName = null;

  @SerializedName("givenName")
  private String givenName = null;

  public UserResponseAttributesIdentity emailId(String emailId) {
    this.emailId = emailId;
    return this;
  }

   /**
   * email address of the user
   * @return emailId
  **/
  @Schema(example = "john.doe@siemens.com", required = true, description = "email address of the user")
  public String getEmailId() {
    return emailId;
  }

  public void setEmailId(String emailId) {
    this.emailId = emailId;
  }

  public UserResponseAttributesIdentity externalId(String externalId) {
    this.externalId = externalId;
    return this;
  }

   /**
   * horizon ID of the user within Siemens ID
   * @return externalId
  **/
  @Schema(example = "oauth2|main-tenant-oidc|samlp|Siemens|Z0000ABCD", required = true, description = "horizon ID of the user within Siemens ID")
  public String getExternalId() {
    return externalId;
  }

  public void setExternalId(String externalId) {
    this.externalId = externalId;
  }

  public UserResponseAttributesIdentity familyName(String familyName) {
    this.familyName = familyName;
    return this;
  }

   /**
   * user&#x27;s family name
   * @return familyName
  **/
  @Schema(example = "Doe", description = "user's family name")
  public String getFamilyName() {
    return familyName;
  }

  public void setFamilyName(String familyName) {
    this.familyName = familyName;
  }

  public UserResponseAttributesIdentity fullName(String fullName) {
    this.fullName = fullName;
    return this;
  }

   /**
   * user&#x27;s full name
   * @return fullName
  **/
  @Schema(example = "John Doe", description = "user's full name")
  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public UserResponseAttributesIdentity givenName(String givenName) {
    this.givenName = givenName;
    return this;
  }

   /**
   * user&#x27;s given name
   * @return givenName
  **/
  @Schema(example = "John", required = true, description = "user's given name")
  public String getGivenName() {
    return givenName;
  }

  public void setGivenName(String givenName) {
    this.givenName = givenName;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UserResponseAttributesIdentity userResponseAttributesIdentity = (UserResponseAttributesIdentity) o;
    return Objects.equals(this.emailId, userResponseAttributesIdentity.emailId) &&
        Objects.equals(this.externalId, userResponseAttributesIdentity.externalId) &&
        Objects.equals(this.familyName, userResponseAttributesIdentity.familyName) &&
        Objects.equals(this.fullName, userResponseAttributesIdentity.fullName) &&
        Objects.equals(this.givenName, userResponseAttributesIdentity.givenName);
  }

  @Override
  public int hashCode() {
    return Objects.hash(emailId, externalId, familyName, fullName, givenName);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UserResponseAttributesIdentity {\n");
    
    sb.append("    emailId: ").append(toIndentedString(emailId)).append("\n");
    sb.append("    externalId: ").append(toIndentedString(externalId)).append("\n");
    sb.append("    familyName: ").append(toIndentedString(familyName)).append("\n");
    sb.append("    fullName: ").append(toIndentedString(fullName)).append("\n");
    sb.append("    givenName: ").append(toIndentedString(givenName)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}
