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
import io.swagger.client.model.UserResponseAttributesIdentity;
import io.swagger.client.model.UserResponseAttributesProfile;
import io.swagger.v3.oas.annotations.media.Schema;
import java.io.IOException;
/**
 * UserResponseAttributes
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2023-12-01T06:30:31.697361Z[Etc/UTC]")
public class UserResponseAttributes {
  @SerializedName("identity")
  private UserResponseAttributesIdentity identity = null;

  @SerializedName("profile")
  private UserResponseAttributesProfile profile = null;

  public UserResponseAttributes identity(UserResponseAttributesIdentity identity) {
    this.identity = identity;
    return this;
  }

   /**
   * Get identity
   * @return identity
  **/
  @Schema(required = true, description = "")
  public UserResponseAttributesIdentity getIdentity() {
    return identity;
  }

  public void setIdentity(UserResponseAttributesIdentity identity) {
    this.identity = identity;
  }

  public UserResponseAttributes profile(UserResponseAttributesProfile profile) {
    this.profile = profile;
    return this;
  }

   /**
   * Get profile
   * @return profile
  **/
  @Schema(required = true, description = "")
  public UserResponseAttributesProfile getProfile() {
    return profile;
  }

  public void setProfile(UserResponseAttributesProfile profile) {
    this.profile = profile;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UserResponseAttributes userResponseAttributes = (UserResponseAttributes) o;
    return Objects.equals(this.identity, userResponseAttributes.identity) &&
        Objects.equals(this.profile, userResponseAttributes.profile);
  }

  @Override
  public int hashCode() {
    return Objects.hash(identity, profile);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UserResponseAttributes {\n");
    
    sb.append("    identity: ").append(toIndentedString(identity)).append("\n");
    sb.append("    profile: ").append(toIndentedString(profile)).append("\n");
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
