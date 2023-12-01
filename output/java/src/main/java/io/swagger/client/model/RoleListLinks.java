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
 * RoleListLinks
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2023-12-01T06:22:45.936666Z[Etc/UTC]")
public class RoleListLinks {
  @SerializedName("self")
  private String self = null;

  @SerializedName("next")
  private String next = null;

  public RoleListLinks self(String self) {
    this.self = self;
    return this;
  }

   /**
   * Get self
   * @return self
  **/
  @Schema(example = "/customers/8e9833b5-b844-40a3-8572-4a16d29c53bc/roles", required = true, description = "")
  public String getSelf() {
    return self;
  }

  public void setSelf(String self) {
    this.self = self;
  }

  public RoleListLinks next(String next) {
    this.next = next;
    return this;
  }

   /**
   * Get next
   * @return next
  **/
  @Schema(example = "/customers/8e9833b5-b844-40a3-8572-4a16d29c53bc/roles?page[cursor]=qwerty", description = "")
  public String getNext() {
    return next;
  }

  public void setNext(String next) {
    this.next = next;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    RoleListLinks roleListLinks = (RoleListLinks) o;
    return Objects.equals(this.self, roleListLinks.self) &&
        Objects.equals(this.next, roleListLinks.next);
  }

  @Override
  public int hashCode() {
    return Objects.hash(self, next);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class RoleListLinks {\n");
    
    sb.append("    self: ").append(toIndentedString(self)).append("\n");
    sb.append("    next: ").append(toIndentedString(next)).append("\n");
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
