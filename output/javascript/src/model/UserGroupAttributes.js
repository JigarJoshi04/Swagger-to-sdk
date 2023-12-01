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
 * The UserGroupAttributes model module.
 * @module model/UserGroupAttributes
 * @version 0.9.5
 */
export class UserGroupAttributes {
  /**
   * Constructs a new <code>UserGroupAttributes</code>.
   * @alias module:model/UserGroupAttributes
   * @class
   * @param name {String} Name of the user group 
   * @param description {String} Description of the user group 
   */
  constructor(name, description) {
    this.name = name;
    this.description = description;
  }

  /**
   * Constructs a <code>UserGroupAttributes</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/UserGroupAttributes} obj Optional instance to populate.
   * @return {module:model/UserGroupAttributes} The populated <code>UserGroupAttributes</code> instance.
   */
  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new UserGroupAttributes();
      if (data.hasOwnProperty('name'))
        obj.name = ApiClient.convertToType(data['name'], 'String');
      if (data.hasOwnProperty('description'))
        obj.description = ApiClient.convertToType(data['description'], 'String');
      if (data.hasOwnProperty('isMachineEnabled'))
        obj.isMachineEnabled = ApiClient.convertToType(data['isMachineEnabled'], 'Boolean');
      if (data.hasOwnProperty('isSystemDefined'))
        obj.isSystemDefined = ApiClient.convertToType(data['isSystemDefined'], 'Boolean');
    }
    return obj;
  }
}

/**
 * Name of the user group 
 * @member {String} name
 */
UserGroupAttributes.prototype.name = undefined;

/**
 * Description of the user group 
 * @member {String} description
 */
UserGroupAttributes.prototype.description = undefined;

/**
 * @member {Boolean} isMachineEnabled
 */
UserGroupAttributes.prototype.isMachineEnabled = undefined;

/**
 * @member {Boolean} isSystemDefined
 */
UserGroupAttributes.prototype.isSystemDefined = undefined;
