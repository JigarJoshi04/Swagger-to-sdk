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
import {UserGroupAttributes} from './UserGroupAttributes';
import {UserGroupRelationships} from './UserGroupRelationships';

/**
 * The UserGroup model module.
 * @module model/UserGroup
 * @version 0.9.5
 */
export class UserGroup {
  /**
   * Constructs a new <code>UserGroup</code>.
   * @alias module:model/UserGroup
   * @class
   * @param type {String} 
   * @param id {String} 
   * @param attributes {module:model/UserGroupAttributes} 
   */
  constructor(type, id, attributes) {
    this.type = type;
    this.id = id;
    this.attributes = attributes;
  }

  /**
   * Constructs a <code>UserGroup</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/UserGroup} obj Optional instance to populate.
   * @return {module:model/UserGroup} The populated <code>UserGroup</code> instance.
   */
  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new UserGroup();
      if (data.hasOwnProperty('type'))
        obj.type = ApiClient.convertToType(data['type'], 'String');
      if (data.hasOwnProperty('id'))
        obj.id = ApiClient.convertToType(data['id'], 'String');
      if (data.hasOwnProperty('attributes'))
        obj.attributes = UserGroupAttributes.constructFromObject(data['attributes']);
      if (data.hasOwnProperty('relationships'))
        obj.relationships = UserGroupRelationships.constructFromObject(data['relationships']);
    }
    return obj;
  }
}

/**
 * @member {String} type
 */
UserGroup.prototype.type = undefined;

/**
 * @member {String} id
 */
UserGroup.prototype.id = undefined;

/**
 * @member {module:model/UserGroupAttributes} attributes
 */
UserGroup.prototype.attributes = undefined;

/**
 * @member {module:model/UserGroupRelationships} relationships
 */
UserGroup.prototype.relationships = undefined;

