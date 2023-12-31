/*
 * Accounts API
 * Accounts API 
 *
 * OpenAPI spec version: 0.9.5
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 *
 * Swagger Codegen version: 3.0.27
 *
 * Do not edit the class manually.
 *
 */
import {ApiClient} from '../ApiClient';

/**
 * The UserResponseAttributesIdentity model module.
 * @module model/UserResponseAttributesIdentity
 * @version 0.9.5
 */
export class UserResponseAttributesIdentity {
  /**
   * Constructs a new <code>UserResponseAttributesIdentity</code>.
   * user identity details
   * @alias module:model/UserResponseAttributesIdentity
   * @class
   * @param emailId {String} email address of the user
   * @param externalId {String} horizon ID of the user within Siemens ID
   * @param givenName {String} user's given name
   */
  constructor(emailId, externalId, givenName) {
    this.emailId = emailId;
    this.externalId = externalId;
    this.givenName = givenName;
  }

  /**
   * Constructs a <code>UserResponseAttributesIdentity</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/UserResponseAttributesIdentity} obj Optional instance to populate.
   * @return {module:model/UserResponseAttributesIdentity} The populated <code>UserResponseAttributesIdentity</code> instance.
   */
  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new UserResponseAttributesIdentity();
      if (data.hasOwnProperty('emailId'))
        obj.emailId = ApiClient.convertToType(data['emailId'], 'String');
      if (data.hasOwnProperty('externalId'))
        obj.externalId = ApiClient.convertToType(data['externalId'], 'String');
      if (data.hasOwnProperty('familyName'))
        obj.familyName = ApiClient.convertToType(data['familyName'], 'String');
      if (data.hasOwnProperty('fullName'))
        obj.fullName = ApiClient.convertToType(data['fullName'], 'String');
      if (data.hasOwnProperty('givenName'))
        obj.givenName = ApiClient.convertToType(data['givenName'], 'String');
    }
    return obj;
  }
}

/**
 * email address of the user
 * @member {String} emailId
 */
UserResponseAttributesIdentity.prototype.emailId = undefined;

/**
 * horizon ID of the user within Siemens ID
 * @member {String} externalId
 */
UserResponseAttributesIdentity.prototype.externalId = undefined;

/**
 * user's family name
 * @member {String} familyName
 */
UserResponseAttributesIdentity.prototype.familyName = undefined;

/**
 * user's full name
 * @member {String} fullName
 */
UserResponseAttributesIdentity.prototype.fullName = undefined;

/**
 * user's given name
 * @member {String} givenName
 */
UserResponseAttributesIdentity.prototype.givenName = undefined;

