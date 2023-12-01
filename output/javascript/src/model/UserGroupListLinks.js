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
 * The UserGroupListLinks model module.
 * @module model/UserGroupListLinks
 * @version 0.9.5
 */
export class UserGroupListLinks {
  /**
   * Constructs a new <code>UserGroupListLinks</code>.
   * @alias module:model/UserGroupListLinks
   * @class
   * @param self {String} 
   */
  constructor(self) {
    this.self = self;
  }

  /**
   * Constructs a <code>UserGroupListLinks</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/UserGroupListLinks} obj Optional instance to populate.
   * @return {module:model/UserGroupListLinks} The populated <code>UserGroupListLinks</code> instance.
   */
  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new UserGroupListLinks();
      if (data.hasOwnProperty('self'))
        obj.self = ApiClient.convertToType(data['self'], 'String');
      if (data.hasOwnProperty('next'))
        obj.next = ApiClient.convertToType(data['next'], 'String');
    }
    return obj;
  }
}

/**
 * @member {String} self
 */
UserGroupListLinks.prototype.self = undefined;

/**
 * @member {String} next
 */
UserGroupListLinks.prototype.next = undefined;

