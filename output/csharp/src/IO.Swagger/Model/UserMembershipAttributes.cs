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
    /// additional details user by certain products
    /// </summary>
    [DataContract]
        public partial class UserMembershipAttributes :  IEquatable<UserMembershipAttributes>, IValidatableObject
    {
        /// <summary>
        /// State of the membership
        /// </summary>
        /// <value>State of the membership</value>
        [JsonConverter(typeof(StringEnumConverter))]
                public enum StateEnum
        {
            /// <summary>
            /// Enum Active for value: active
            /// </summary>
            [EnumMember(Value = "active")]
            Active = 1,
            /// <summary>
            /// Enum Suspended for value: suspended
            /// </summary>
            [EnumMember(Value = "suspended")]
            Suspended = 2        }
        /// <summary>
        /// State of the membership
        /// </summary>
        /// <value>State of the membership</value>
        [DataMember(Name="state", EmitDefaultValue=false)]
        public StateEnum State { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="UserMembershipAttributes" /> class.
        /// </summary>
        /// <param name="state">State of the membership (required).</param>
        public UserMembershipAttributes(StateEnum state = default(StateEnum))
        {
            // to ensure "state" is required (not null)
            if (state == null)
            {
                throw new InvalidDataException("state is a required property for UserMembershipAttributes and cannot be null");
            }
            else
            {
                this.State = state;
            }
        }
        

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class UserMembershipAttributes {\n");
            sb.Append("  State: ").Append(State).Append("\n");
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
            return this.Equals(input as UserMembershipAttributes);
        }

        /// <summary>
        /// Returns true if UserMembershipAttributes instances are equal
        /// </summary>
        /// <param name="input">Instance of UserMembershipAttributes to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(UserMembershipAttributes input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.State == input.State ||
                    (this.State != null &&
                    this.State.Equals(input.State))
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
                if (this.State != null)
                    hashCode = hashCode * 59 + this.State.GetHashCode();
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
