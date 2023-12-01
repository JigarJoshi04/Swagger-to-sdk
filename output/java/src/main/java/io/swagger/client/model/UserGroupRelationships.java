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
import io.swagger.client.model.CustomerRelationship;
import io.swagger.client.model.PartitionRelationship;
import io.swagger.client.model.RoleRelationship;
import io.swagger.v3.oas.annotations.media.Schema;
import java.io.IOException;
/**
 * UserGroupRelationships
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2023-12-01T06:22:45.936666Z[Etc/UTC]")
public class UserGroupRelationships {
  @SerializedName("hasAccessTo")
  private PartitionRelationship hasAccessTo = null;

  @SerializedName("authorizedAs")
  private RoleRelationship authorizedAs = null;

  @SerializedName("ownedBy")
  private CustomerRelationship ownedBy = null;

  public UserGroupRelationships hasAccessTo(PartitionRelationship hasAccessTo) {
    this.hasAccessTo = hasAccessTo;
    return this;
  }

   /**
   * Get hasAccessTo
   * @return hasAccessTo
  **/
  @Schema(description = "")
  public PartitionRelationship getHasAccessTo() {
    return hasAccessTo;
  }

  public void setHasAccessTo(PartitionRelationship hasAccessTo) {
    this.hasAccessTo = hasAccessTo;
  }

  public UserGroupRelationships authorizedAs(RoleRelationship authorizedAs) {
    this.authorizedAs = authorizedAs;
    return this;
  }

   /**
   * Get authorizedAs
   * @return authorizedAs
  **/
  @Schema(description = "")
  public RoleRelationship getAuthorizedAs() {
    return authorizedAs;
  }

  public void setAuthorizedAs(RoleRelationship authorizedAs) {
    this.authorizedAs = authorizedAs;
  }

  public UserGroupRelationships ownedBy(CustomerRelationship ownedBy) {
    this.ownedBy = ownedBy;
    return this;
  }

   /**
   * Get ownedBy
   * @return ownedBy
  **/
  @Schema(description = "")
  public CustomerRelationship getOwnedBy() {
    return ownedBy;
  }

  public void setOwnedBy(CustomerRelationship ownedBy) {
    this.ownedBy = ownedBy;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UserGroupRelationships userGroupRelationships = (UserGroupRelationships) o;
    return Objects.equals(this.hasAccessTo, userGroupRelationships.hasAccessTo) &&
        Objects.equals(this.authorizedAs, userGroupRelationships.authorizedAs) &&
        Objects.equals(this.ownedBy, userGroupRelationships.ownedBy);
  }

  @Override
  public int hashCode() {
    return Objects.hash(hasAccessTo, authorizedAs, ownedBy);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UserGroupRelationships {\n");
    
    sb.append("    hasAccessTo: ").append(toIndentedString(hasAccessTo)).append("\n");
    sb.append("    authorizedAs: ").append(toIndentedString(authorizedAs)).append("\n");
    sb.append("    ownedBy: ").append(toIndentedString(ownedBy)).append("\n");
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
