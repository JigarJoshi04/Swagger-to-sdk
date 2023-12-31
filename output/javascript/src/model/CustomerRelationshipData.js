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
 * The CustomerRelationshipData model module.
 * @module model/CustomerRelationshipData
 * @version 0.9.5
 */
export class CustomerRelationshipData {
  /**
   * Constructs a new <code>CustomerRelationshipData</code>.
   * @alias module:model/CustomerRelationshipData
   * @class
   * @param type {module:model/CustomerRelationshipData.TypeEnum} 
   * @param id {String} 
   */
  constructor(type, id) {
    this.type = type;
    this.id = id;
  }

  /**
   * Constructs a <code>CustomerRelationshipData</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/CustomerRelationshipData} obj Optional instance to populate.
   * @return {module:model/CustomerRelationshipData} The populated <code>CustomerRelationshipData</code> instance.
   */
  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new CustomerRelationshipData();
      if (data.hasOwnProperty('type'))
        obj.type = ApiClient.convertToType(data['type'], 'String');
      if (data.hasOwnProperty('id'))
        obj.id = ApiClient.convertToType(data['id'], 'String');
    }
    return obj;
  }
}

/**
 * Allowed values for the <code>type</code> property.
 * @enum {String}
 * @readonly
 */
CustomerRelationshipData.TypeEnum = {
  /**
   * value: "Customer"
   * @const
   */
  customer: "Customer"
};
/**
 * @member {module:model/CustomerRelationshipData.TypeEnum} type
 */
CustomerRelationshipData.prototype.type = undefined;

/**
 * @member {String} id
 */
CustomerRelationshipData.prototype.id = undefined;

