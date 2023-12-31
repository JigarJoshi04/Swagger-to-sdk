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
    /// MachineUserResponseAttributes
    /// </summary>
    [DataContract]
        public partial class MachineUserResponseAttributes :  IEquatable<MachineUserResponseAttributes>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="MachineUserResponseAttributes" /> class.
        /// </summary>
        /// <param name="name">Name of Machine User (required).</param>
        /// <param name="purpose">Purpose of this machine user (required).</param>
        /// <param name="state">state (required).</param>
        /// <param name="oAuth">oAuth (required).</param>
        public MachineUserResponseAttributes(string name = default(string), string purpose = default(string), MachineUserState state = default(MachineUserState), MachineUserOAuth oAuth = default(MachineUserOAuth))
        {
            // to ensure "name" is required (not null)
            if (name == null)
            {
                throw new InvalidDataException("name is a required property for MachineUserResponseAttributes and cannot be null");
            }
            else
            {
                this.Name = name;
            }
            // to ensure "purpose" is required (not null)
            if (purpose == null)
            {
                throw new InvalidDataException("purpose is a required property for MachineUserResponseAttributes and cannot be null");
            }
            else
            {
                this.Purpose = purpose;
            }
            // to ensure "state" is required (not null)
            if (state == null)
            {
                throw new InvalidDataException("state is a required property for MachineUserResponseAttributes and cannot be null");
            }
            else
            {
                this.State = state;
            }
            // to ensure "oAuth" is required (not null)
            if (oAuth == null)
            {
                throw new InvalidDataException("oAuth is a required property for MachineUserResponseAttributes and cannot be null");
            }
            else
            {
                this.OAuth = oAuth;
            }
        }
        
        /// <summary>
        /// Name of Machine User
        /// </summary>
        /// <value>Name of Machine User</value>
        [DataMember(Name="name", EmitDefaultValue=false)]
        public string Name { get; set; }

        /// <summary>
        /// Purpose of this machine user
        /// </summary>
        /// <value>Purpose of this machine user</value>
        [DataMember(Name="purpose", EmitDefaultValue=false)]
        public string Purpose { get; set; }

        /// <summary>
        /// Gets or Sets State
        /// </summary>
        [DataMember(Name="state", EmitDefaultValue=false)]
        public MachineUserState State { get; set; }

        /// <summary>
        /// Gets or Sets OAuth
        /// </summary>
        [DataMember(Name="oAuth", EmitDefaultValue=false)]
        public MachineUserOAuth OAuth { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class MachineUserResponseAttributes {\n");
            sb.Append("  Name: ").Append(Name).Append("\n");
            sb.Append("  Purpose: ").Append(Purpose).Append("\n");
            sb.Append("  State: ").Append(State).Append("\n");
            sb.Append("  OAuth: ").Append(OAuth).Append("\n");
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
            return this.Equals(input as MachineUserResponseAttributes);
        }

        /// <summary>
        /// Returns true if MachineUserResponseAttributes instances are equal
        /// </summary>
        /// <param name="input">Instance of MachineUserResponseAttributes to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(MachineUserResponseAttributes input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.Name == input.Name ||
                    (this.Name != null &&
                    this.Name.Equals(input.Name))
                ) && 
                (
                    this.Purpose == input.Purpose ||
                    (this.Purpose != null &&
                    this.Purpose.Equals(input.Purpose))
                ) && 
                (
                    this.State == input.State ||
                    (this.State != null &&
                    this.State.Equals(input.State))
                ) && 
                (
                    this.OAuth == input.OAuth ||
                    (this.OAuth != null &&
                    this.OAuth.Equals(input.OAuth))
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
                if (this.Name != null)
                    hashCode = hashCode * 59 + this.Name.GetHashCode();
                if (this.Purpose != null)
                    hashCode = hashCode * 59 + this.Purpose.GetHashCode();
                if (this.State != null)
                    hashCode = hashCode * 59 + this.State.GetHashCode();
                if (this.OAuth != null)
                    hashCode = hashCode * 59 + this.OAuth.GetHashCode();
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
