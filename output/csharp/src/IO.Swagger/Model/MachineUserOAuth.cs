/* 
 * Accounts API
 *
 * Accounts API 
 *
 * OpenAPI spec version: 0.9.5
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */
using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using SwaggerDateConverter = IO.Swagger.Client.SwaggerDateConverter;

namespace IO.Swagger.Model
{
    /// <summary>
    /// MachineUserOAuth
    /// </summary>
    [DataContract]
        public partial class MachineUserOAuth :  IEquatable<MachineUserOAuth>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="MachineUserOAuth" /> class.
        /// </summary>
        /// <param name="clientId">ID of client (required).</param>
        /// <param name="issuer">issuer of oAuth (required).</param>
        /// <param name="audience">Audience (required).</param>
        /// <param name="secretCreated">Time of secret creation (required).</param>
        /// <param name="secretRotated">time of secret rotation (required).</param>
        public MachineUserOAuth(string clientId = default(string), string issuer = default(string), string audience = default(string), string secretCreated = default(string), string secretRotated = default(string))
        {
            // to ensure "clientId" is required (not null)
            if (clientId == null)
            {
                throw new InvalidDataException("clientId is a required property for MachineUserOAuth and cannot be null");
            }
            else
            {
                this.ClientId = clientId;
            }
            // to ensure "issuer" is required (not null)
            if (issuer == null)
            {
                throw new InvalidDataException("issuer is a required property for MachineUserOAuth and cannot be null");
            }
            else
            {
                this.Issuer = issuer;
            }
            // to ensure "audience" is required (not null)
            if (audience == null)
            {
                throw new InvalidDataException("audience is a required property for MachineUserOAuth and cannot be null");
            }
            else
            {
                this.Audience = audience;
            }
            // to ensure "secretCreated" is required (not null)
            if (secretCreated == null)
            {
                throw new InvalidDataException("secretCreated is a required property for MachineUserOAuth and cannot be null");
            }
            else
            {
                this.SecretCreated = secretCreated;
            }
            // to ensure "secretRotated" is required (not null)
            if (secretRotated == null)
            {
                throw new InvalidDataException("secretRotated is a required property for MachineUserOAuth and cannot be null");
            }
            else
            {
                this.SecretRotated = secretRotated;
            }
        }
        
        /// <summary>
        /// ID of client
        /// </summary>
        /// <value>ID of client</value>
        [DataMember(Name="clientId", EmitDefaultValue=false)]
        public string ClientId { get; set; }

        /// <summary>
        /// issuer of oAuth
        /// </summary>
        /// <value>issuer of oAuth</value>
        [DataMember(Name="issuer", EmitDefaultValue=false)]
        public string Issuer { get; set; }

        /// <summary>
        /// Audience
        /// </summary>
        /// <value>Audience</value>
        [DataMember(Name="audience", EmitDefaultValue=false)]
        public string Audience { get; set; }

        /// <summary>
        /// Time of secret creation
        /// </summary>
        /// <value>Time of secret creation</value>
        [DataMember(Name="secretCreated", EmitDefaultValue=false)]
        public string SecretCreated { get; set; }

        /// <summary>
        /// time of secret rotation
        /// </summary>
        /// <value>time of secret rotation</value>
        [DataMember(Name="secretRotated", EmitDefaultValue=false)]
        public string SecretRotated { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class MachineUserOAuth {\n");
            sb.Append("  ClientId: ").Append(ClientId).Append("\n");
            sb.Append("  Issuer: ").Append(Issuer).Append("\n");
            sb.Append("  Audience: ").Append(Audience).Append("\n");
            sb.Append("  SecretCreated: ").Append(SecretCreated).Append("\n");
            sb.Append("  SecretRotated: ").Append(SecretRotated).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as MachineUserOAuth);
        }

        /// <summary>
        /// Returns true if MachineUserOAuth instances are equal
        /// </summary>
        /// <param name="input">Instance of MachineUserOAuth to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(MachineUserOAuth input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.ClientId == input.ClientId ||
                    (this.ClientId != null &&
                    this.ClientId.Equals(input.ClientId))
                ) && 
                (
                    this.Issuer == input.Issuer ||
                    (this.Issuer != null &&
                    this.Issuer.Equals(input.Issuer))
                ) && 
                (
                    this.Audience == input.Audience ||
                    (this.Audience != null &&
                    this.Audience.Equals(input.Audience))
                ) && 
                (
                    this.SecretCreated == input.SecretCreated ||
                    (this.SecretCreated != null &&
                    this.SecretCreated.Equals(input.SecretCreated))
                ) && 
                (
                    this.SecretRotated == input.SecretRotated ||
                    (this.SecretRotated != null &&
                    this.SecretRotated.Equals(input.SecretRotated))
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.ClientId != null)
                    hashCode = hashCode * 59 + this.ClientId.GetHashCode();
                if (this.Issuer != null)
                    hashCode = hashCode * 59 + this.Issuer.GetHashCode();
                if (this.Audience != null)
                    hashCode = hashCode * 59 + this.Audience.GetHashCode();
                if (this.SecretCreated != null)
                    hashCode = hashCode * 59 + this.SecretCreated.GetHashCode();
                if (this.SecretRotated != null)
                    hashCode = hashCode * 59 + this.SecretRotated.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }
}
