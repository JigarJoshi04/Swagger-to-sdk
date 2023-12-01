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
import {MachineUserMeta} from './MachineUserMeta';
import {MachineUserRelationships} from './MachineUserRelationships';
import {MachineUserResponseAttributes} from './MachineUserResponseAttributes';

/**
 * The MachineUser model module.
 * @module model/MachineUser
 * @version 0.9.5
 */
export class MachineUser {
  /**
   * Constructs a new <code>MachineUser</code>.
   * @alias module:model/MachineUser
   * @class
   * @param type {module:model/MachineUser.TypeEnum} 
   * @param id {String} ID of the Machine User 
   */
  constructor(type, id) {
    this.type = type;
    this.id = id;
  }

  /**
   * Constructs a <code>MachineUser</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/MachineUser} obj Optional instance to populate.
   * @return {module:model/MachineUser} The populated <code>MachineUser</code> instance.
   */
  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new MachineUser();
      if (data.hasOwnProperty('type'))
        obj.type = ApiClient.convertToType(data['type'], 'String');
      if (data.hasOwnProperty('id'))
        obj.id = ApiClient.convertToType(data['id'], 'String');
      if (data.hasOwnProperty('attributes'))
        obj.attributes = MachineUserResponseAttributes.constructFromObject(data['attributes']);
      if (data.hasOwnProperty('relationships'))
        obj.relationships = MachineUserRelationships.constructFromObject(data['relationships']);
      if (data.hasOwnProperty('meta'))
        obj.meta = MachineUserMeta.constructFromObject(data['meta']);
    }
    return obj;
  }
}

/**
 * Allowed values for the <code>type</code> property.
 * @enum {String}
 * @readonly
 */
MachineUser.TypeEnum = {
  /**
   * value: "MachineUser"
   * @const
   */
  machineUser: "MachineUser"
};
/**
 * @member {module:model/MachineUser.TypeEnum} type
 */
MachineUser.prototype.type = undefined;

/**
 * ID of the Machine User 
 * @member {String} id
 */
MachineUser.prototype.id = undefined;

/**
 * @member {module:model/MachineUserResponseAttributes} attributes
 */
MachineUser.prototype.attributes = undefined;

/**
 * @member {module:model/MachineUserRelationships} relationships
 */
MachineUser.prototype.relationships = undefined;

/**
 * @member {module:model/MachineUserMeta} meta
 */
MachineUser.prototype.meta = undefined;
