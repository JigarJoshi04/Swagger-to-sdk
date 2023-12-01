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
import io.swagger.client.model.UserGroupRelationship;
import io.swagger.v3.oas.annotations.media.Schema;
import java.io.IOException;
/**
 * UserRelationships
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2023-12-01T06:22:45.936666Z[Etc/UTC]")
public class UserRelationships {
  @SerializedName("belongsTo")
  private UserGroupRelationship belongsTo = null;

  public UserRelationships belongsTo(UserGroupRelationship belongsTo) {
    this.belongsTo = belongsTo;
    return this;
  }

   /**
   * Get belongsTo
   * @return belongsTo
  **/
  @Schema(description = "")
  public UserGroupRelationship getBelongsTo() {
    return belongsTo;
  }

  public void setBelongsTo(UserGroupRelationship belongsTo) {
    this.belongsTo = belongsTo;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UserRelationships userRelationships = (UserRelationships) o;
    return Objects.equals(this.belongsTo, userRelationships.belongsTo);
  }

  @Override
  public int hashCode() {
    return Objects.hash(belongsTo);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UserRelationships {\n");
    
    sb.append("    belongsTo: ").append(toIndentedString(belongsTo)).append("\n");
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
