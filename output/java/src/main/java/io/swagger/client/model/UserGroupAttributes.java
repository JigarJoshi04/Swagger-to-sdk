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
 * UserGroupAttributes
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2023-12-01T06:30:31.697361Z[Etc/UTC]")
public class UserGroupAttributes {
  @SerializedName("name")
  private String name = null;

  @SerializedName("description")
  private String description = null;

  @SerializedName("isMachineEnabled")
  private Boolean isMachineEnabled = null;

  @SerializedName("isSystemDefined")
  private Boolean isSystemDefined = null;

  public UserGroupAttributes name(String name) {
    this.name = name;
    return this;
  }

   /**
   * Name of the user group 
   * @return name
  **/
  @Schema(example = "CustomerOperator", required = true, description = "Name of the user group ")
  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public UserGroupAttributes description(String description) {
    this.description = description;
    return this;
  }

   /**
   * Description of the user group 
   * @return description
  **/
  @Schema(example = "Customer Operator for managing user groups", required = true, description = "Description of the user group ")
  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public UserGroupAttributes isMachineEnabled(Boolean isMachineEnabled) {
    this.isMachineEnabled = isMachineEnabled;
    return this;
  }

   /**
   * Get isMachineEnabled
   * @return isMachineEnabled
  **/
  @Schema(example = "true", description = "")
  public Boolean isIsMachineEnabled() {
    return isMachineEnabled;
  }

  public void setIsMachineEnabled(Boolean isMachineEnabled) {
    this.isMachineEnabled = isMachineEnabled;
  }

  public UserGroupAttributes isSystemDefined(Boolean isSystemDefined) {
    this.isSystemDefined = isSystemDefined;
    return this;
  }

   /**
   * Get isSystemDefined
   * @return isSystemDefined
  **/
  @Schema(example = "true", description = "")
  public Boolean isIsSystemDefined() {
    return isSystemDefined;
  }

  public void setIsSystemDefined(Boolean isSystemDefined) {
    this.isSystemDefined = isSystemDefined;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UserGroupAttributes userGroupAttributes = (UserGroupAttributes) o;
    return Objects.equals(this.name, userGroupAttributes.name) &&
        Objects.equals(this.description, userGroupAttributes.description) &&
        Objects.equals(this.isMachineEnabled, userGroupAttributes.isMachineEnabled) &&
        Objects.equals(this.isSystemDefined, userGroupAttributes.isSystemDefined);
  }

  @Override
  public int hashCode() {
    return Objects.hash(name, description, isMachineEnabled, isSystemDefined);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UserGroupAttributes {\n");
    
    sb.append("    name: ").append(toIndentedString(name)).append("\n");
    sb.append("    description: ").append(toIndentedString(description)).append("\n");
    sb.append("    isMachineEnabled: ").append(toIndentedString(isMachineEnabled)).append("\n");
    sb.append("    isSystemDefined: ").append(toIndentedString(isSystemDefined)).append("\n");
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
