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
    /// UserResponseAttributesProfile
    /// </summary>
    [DataContract]
        public partial class UserResponseAttributesProfile :  IEquatable<UserResponseAttributesProfile>, IValidatableObject
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="UserResponseAttributesProfile" /> class.
        /// </summary>
        /// <param name="freeText">free text user info.</param>
        /// <param name="jobDescription">user&#x27;s job description.</param>
        /// <param name="phone">user&#x27;s contact phone number.</param>
        /// <param name="profileImage">user&#x27;s profile image.</param>
        public UserResponseAttributesProfile(string freeText = default(string), string jobDescription = default(string), string phone = default(string), string profileImage = default(string))
        {
            this.FreeText = freeText;
            this.JobDescription = jobDescription;
            this.Phone = phone;
            this.ProfileImage = profileImage;
        }
        
        /// <summary>
        /// free text user info
        /// </summary>
        /// <value>free text user info</value>
        [DataMember(Name="freeText", EmitDefaultValue=false)]
        public string FreeText { get; set; }

        /// <summary>
        /// user&#x27;s job description
        /// </summary>
        /// <value>user&#x27;s job description</value>
        [DataMember(Name="jobDescription", EmitDefaultValue=false)]
        public string JobDescription { get; set; }

        /// <summary>
        /// user&#x27;s contact phone number
        /// </summary>
        /// <value>user&#x27;s contact phone number</value>
        [DataMember(Name="phone", EmitDefaultValue=false)]
        public string Phone { get; set; }

        /// <summary>
        /// user&#x27;s profile image
        /// </summary>
        /// <value>user&#x27;s profile image</value>
        [DataMember(Name="profileImage", EmitDefaultValue=false)]
        public string ProfileImage { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class UserResponseAttributesProfile {\n");
            sb.Append("  FreeText: ").Append(FreeText).Append("\n");
            sb.Append("  JobDescription: ").Append(JobDescription).Append("\n");
            sb.Append("  Phone: ").Append(Phone).Append("\n");
            sb.Append("  ProfileImage: ").Append(ProfileImage).Append("\n");
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
            return this.Equals(input as UserResponseAttributesProfile);
        }

        /// <summary>
        /// Returns true if UserResponseAttributesProfile instances are equal
        /// </summary>
        /// <param name="input">Instance of UserResponseAttributesProfile to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(UserResponseAttributesProfile input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.FreeText == input.FreeText ||
                    (this.FreeText != null &&
                    this.FreeText.Equals(input.FreeText))
                ) && 
                (
                    this.JobDescription == input.JobDescription ||
                    (this.JobDescription != null &&
                    this.JobDescription.Equals(input.JobDescription))
                ) && 
                (
                    this.Phone == input.Phone ||
                    (this.Phone != null &&
                    this.Phone.Equals(input.Phone))
                ) && 
                (
                    this.ProfileImage == input.ProfileImage ||
                    (this.ProfileImage != null &&
                    this.ProfileImage.Equals(input.ProfileImage))
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
                if (this.FreeText != null)
                    hashCode = hashCode * 59 + this.FreeText.GetHashCode();
                if (this.JobDescription != null)
                    hashCode = hashCode * 59 + this.JobDescription.GetHashCode();
                if (this.Phone != null)
                    hashCode = hashCode * 59 + this.Phone.GetHashCode();
                if (this.ProfileImage != null)
                    hashCode = hashCode * 59 + this.ProfileImage.GetHashCode();
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