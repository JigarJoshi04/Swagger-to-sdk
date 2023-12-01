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
import {CustomerRelationship} from './CustomerRelationship';

/**
 * The MachineUserRelationships model module.
 * @module model/MachineUserRelationships
 * @version 0.9.5
 */
export class MachineUserRelationships {
  /**
   * Constructs a new <code>MachineUserRelationships</code>.
   * @alias module:model/MachineUserRelationships
   * @class
   */
  constructor() {
  }

  /**
   * Constructs a <code>MachineUserRelationships</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/MachineUserRelationships} obj Optional instance to populate.
   * @return {module:model/MachineUserRelationships} The populated <code>MachineUserRelationships</code> instance.
   */
  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new MachineUserRelationships();
      if (data.hasOwnProperty('ownedBy'))
        obj.ownedBy = CustomerRelationship.constructFromObject(data['ownedBy']);
    }
    return obj;
  }
}

/**
 * @member {module:model/CustomerRelationship} ownedBy
 */
MachineUserRelationships.prototype.ownedBy = undefined;

