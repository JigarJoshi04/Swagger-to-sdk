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
import io.swagger.client.model.UserGroupRelationships;
import io.swagger.client.model.UserGroupResponseAttribute;
import io.swagger.v3.oas.annotations.media.Schema;
import java.io.IOException;
/**
 * UserGroupResponseData
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2023-12-01T06:30:31.697361Z[Etc/UTC]")
public class UserGroupResponseData {
  @SerializedName("type")
  private String type = null;

  @SerializedName("id")
  private String id = null;

  @SerializedName("attributes")
  private UserGroupResponseAttribute attributes = null;

  @SerializedName("relationships")
  private UserGroupRelationships relationships = null;

  public UserGroupResponseData type(String type) {
    this.type = type;
    return this;
  }

   /**
   * Get type
   * @return type
  **/
  @Schema(example = "UserGroup", required = true, description = "")
  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public UserGroupResponseData id(String id) {
    this.id = id;
    return this;
  }

   /**
   * Get id
   * @return id
  **/
  @Schema(example = "f68a9762-9679-4c17-9012-ec9271f4087f", required = true, description = "")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public UserGroupResponseData attributes(UserGroupResponseAttribute attributes) {
    this.attributes = attributes;
    return this;
  }

   /**
   * Get attributes
   * @return attributes
  **/
  @Schema(required = true, description = "")
  public UserGroupResponseAttribute getAttributes() {
    return attributes;
  }

  public void setAttributes(UserGroupResponseAttribute attributes) {
    this.attributes = attributes;
  }

  public UserGroupResponseData relationships(UserGroupRelationships relationships) {
    this.relationships = relationships;
    return this;
  }

   /**
   * Get relationships
   * @return relationships
  **/
  @Schema(description = "")
  public UserGroupRelationships getRelationships() {
    return relationships;
  }

  public void setRelationships(UserGroupRelationships relationships) {
    this.relationships = relationships;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UserGroupResponseData userGroupResponseData = (UserGroupResponseData) o;
    return Objects.equals(this.type, userGroupResponseData.type) &&
        Objects.equals(this.id, userGroupResponseData.id) &&
        Objects.equals(this.attributes, userGroupResponseData.attributes) &&
        Objects.equals(this.relationships, userGroupResponseData.relationships);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, id, attributes, relationships);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UserGroupResponseData {\n");
    
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    attributes: ").append(toIndentedString(attributes)).append("\n");
    sb.append("    relationships: ").append(toIndentedString(relationships)).append("\n");
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
