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
 * ErrorErrors
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2023-12-01T06:22:45.936666Z[Etc/UTC]")
public class ErrorErrors {
  @SerializedName("id")
  private String id = null;

  @SerializedName("code")
  private String code = null;

  @SerializedName("status")
  private String status = null;

  @SerializedName("title")
  private String title = null;

  @SerializedName("detail")
  private String detail = null;

  public ErrorErrors id(String id) {
    this.id = id;
    return this;
  }

   /**
   * A unique identifier for this particular occurrence of the problem.
   * @return id
  **/
  @Schema(example = "e31f00cc-7a5d-46c2-a272-771e6a8d6ff0", required = true, description = "A unique identifier for this particular occurrence of the problem.")
  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public ErrorErrors code(String code) {
    this.code = code;
    return this;
  }

   /**
   * An application-specific error code, expressed as a string value.
   * @return code
  **/
  @Schema(example = "200-0201", description = "An application-specific error code, expressed as a string value.")
  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public ErrorErrors status(String status) {
    this.status = status;
    return this;
  }

   /**
   * The HTTP status code applicable to this problem, expressed as a string value.
   * @return status
  **/
  @Schema(example = "403", required = true, description = "The HTTP status code applicable to this problem, expressed as a string value.")
  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public ErrorErrors title(String title) {
    this.title = title;
    return this;
  }

   /**
   * A short, human-readable summary of the problem that SHOULD NOT change from occurrence to occurrence of the problem, except for purposes of localization.
   * @return title
  **/
  @Schema(example = "Forbidden to perform this action", required = true, description = "A short, human-readable summary of the problem that SHOULD NOT change from occurrence to occurrence of the problem, except for purposes of localization.")
  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public ErrorErrors detail(String detail) {
    this.detail = detail;
    return this;
  }

   /**
   * a human-readable explanation specific to this occurrence of the problem. Like title, this field’s value can be localized.
   * @return detail
  **/
  @Schema(example = "Forbidden to perform this action", description = "a human-readable explanation specific to this occurrence of the problem. Like title, this field’s value can be localized.")
  public String getDetail() {
    return detail;
  }

  public void setDetail(String detail) {
    this.detail = detail;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ErrorErrors errorErrors = (ErrorErrors) o;
    return Objects.equals(this.id, errorErrors.id) &&
        Objects.equals(this.code, errorErrors.code) &&
        Objects.equals(this.status, errorErrors.status) &&
        Objects.equals(this.title, errorErrors.title) &&
        Objects.equals(this.detail, errorErrors.detail);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id, code, status, title, detail);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class ErrorErrors {\n");
    
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    code: ").append(toIndentedString(code)).append("\n");
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
    sb.append("    title: ").append(toIndentedString(title)).append("\n");
    sb.append("    detail: ").append(toIndentedString(detail)).append("\n");
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
