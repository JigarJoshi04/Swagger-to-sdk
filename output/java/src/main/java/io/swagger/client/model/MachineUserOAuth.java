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
 * MachineUserOAuth
 */

@javax.annotation.Generated(value = "io.swagger.codegen.v3.generators.java.JavaClientCodegen", date = "2023-12-01T06:30:31.697361Z[Etc/UTC]")
public class MachineUserOAuth {
  @SerializedName("clientId")
  private String clientId = null;

  @SerializedName("issuer")
  private String issuer = null;

  @SerializedName("audience")
  private String audience = null;

  @SerializedName("secretCreated")
  private String secretCreated = null;

  @SerializedName("secretRotated")
  private String secretRotated = null;

  public MachineUserOAuth clientId(String clientId) {
    this.clientId = clientId;
    return this;
  }

   /**
   * ID of client
   * @return clientId
  **/
  @Schema(example = "iNpNMgBVJ0Xh5dLqwkC70OueFs7kRAF2", required = true, description = "ID of client")
  public String getClientId() {
    return clientId;
  }

  public void setClientId(String clientId) {
    this.clientId = clientId;
  }

  public MachineUserOAuth issuer(String issuer) {
    this.issuer = issuer;
    return this;
  }

   /**
   * issuer of oAuth
   * @return issuer
  **/
  @Schema(example = "https://siemens-bt-015.eu.auth0.com", required = true, description = "issuer of oAuth")
  public String getIssuer() {
    return issuer;
  }

  public void setIssuer(String issuer) {
    this.issuer = issuer;
  }

  public MachineUserOAuth audience(String audience) {
    this.audience = audience;
    return this;
  }

   /**
   * Audience
   * @return audience
  **/
  @Schema(example = "https://horizon.siemens.com", required = true, description = "Audience")
  public String getAudience() {
    return audience;
  }

  public void setAudience(String audience) {
    this.audience = audience;
  }

  public MachineUserOAuth secretCreated(String secretCreated) {
    this.secretCreated = secretCreated;
    return this;
  }

   /**
   * Time of secret creation
   * @return secretCreated
  **/
  @Schema(example = "2021-06-29T08:58:43.962307719Z", required = true, description = "Time of secret creation")
  public String getSecretCreated() {
    return secretCreated;
  }

  public void setSecretCreated(String secretCreated) {
    this.secretCreated = secretCreated;
  }

  public MachineUserOAuth secretRotated(String secretRotated) {
    this.secretRotated = secretRotated;
    return this;
  }

   /**
   * time of secret rotation
   * @return secretRotated
  **/
  @Schema(example = "2021-06-29T08:58:43.962307719Z", required = true, description = "time of secret rotation")
  public String getSecretRotated() {
    return secretRotated;
  }

  public void setSecretRotated(String secretRotated) {
    this.secretRotated = secretRotated;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    MachineUserOAuth machineUserOAuth = (MachineUserOAuth) o;
    return Objects.equals(this.clientId, machineUserOAuth.clientId) &&
        Objects.equals(this.issuer, machineUserOAuth.issuer) &&
        Objects.equals(this.audience, machineUserOAuth.audience) &&
        Objects.equals(this.secretCreated, machineUserOAuth.secretCreated) &&
        Objects.equals(this.secretRotated, machineUserOAuth.secretRotated);
  }

  @Override
  public int hashCode() {
    return Objects.hash(clientId, issuer, audience, secretCreated, secretRotated);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class MachineUserOAuth {\n");
    
    sb.append("    clientId: ").append(toIndentedString(clientId)).append("\n");
    sb.append("    issuer: ").append(toIndentedString(issuer)).append("\n");
    sb.append("    audience: ").append(toIndentedString(audience)).append("\n");
    sb.append("    secretCreated: ").append(toIndentedString(secretCreated)).append("\n");
    sb.append("    secretRotated: ").append(toIndentedString(secretRotated)).append("\n");
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
