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
import io.swagger.client.model.PagedUserGroupListResponseLinks;
import io.swagger.client.model.UserGroupListResponseData;
import io.swagger.v3.oas.annotations.media.Schema;
import java.io.IOException;
/**
 * PagedUserGroupListResponse
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2023-12-01T06:22:45.936666Z[Etc/UTC]")
public class PagedUserGroupListResponse {
  @SerializedName("data")
  private UserGroupListResponseData data = null;

  @SerializedName("links")
  private PagedUserGroupListResponseLinks links = null;

  public PagedUserGroupListResponse data(UserGroupListResponseData data) {
    this.data = data;
    return this;
  }

   /**
   * Get data
   * @return data
  **/
  @Schema(required = true, description = "")
  public UserGroupListResponseData getData() {
    return data;
  }

  public void setData(UserGroupListResponseData data) {
    this.data = data;
  }

  public PagedUserGroupListResponse links(PagedUserGroupListResponseLinks links) {
    this.links = links;
    return this;
  }

   /**
   * Get links
   * @return links
  **/
  @Schema(required = true, description = "")
  public PagedUserGroupListResponseLinks getLinks() {
    return links;
  }

  public void setLinks(PagedUserGroupListResponseLinks links) {
    this.links = links;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PagedUserGroupListResponse pagedUserGroupListResponse = (PagedUserGroupListResponse) o;
    return Objects.equals(this.data, pagedUserGroupListResponse.data) &&
        Objects.equals(this.links, pagedUserGroupListResponse.links);
  }

  @Override
  public int hashCode() {
    return Objects.hash(data, links);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class PagedUserGroupListResponse {\n");
    
    sb.append("    data: ").append(toIndentedString(data)).append("\n");
    sb.append("    links: ").append(toIndentedString(links)).append("\n");
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