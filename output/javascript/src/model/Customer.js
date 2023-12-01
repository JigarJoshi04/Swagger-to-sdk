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
import {CustomerAttributes} from './CustomerAttributes';
import {CustomerMeta} from './CustomerMeta';

/**
 * The Customer model module.
 * @module model/Customer
 * @version 0.9.5
 */
export class Customer {
  /**
   * Constructs a new <code>Customer</code>.
   * @alias module:model/Customer
   * @class
   * @param type {module:model/Customer.TypeEnum} 
   * @param id {String} 
   * @param attributes {module:model/CustomerAttributes} 
   */
  constructor(type, id, attributes) {
    this.type = type;
    this.id = id;
    this.attributes = attributes;
  }

  /**
   * Constructs a <code>Customer</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/Customer} obj Optional instance to populate.
   * @return {module:model/Customer} The populated <code>Customer</code> instance.
   */
  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new Customer();
      if (data.hasOwnProperty('type'))
        obj.type = ApiClient.convertToType(data['type'], 'String');
      if (data.hasOwnProperty('id'))
        obj.id = ApiClient.convertToType(data['id'], 'String');
      if (data.hasOwnProperty('attributes'))
        obj.attributes = CustomerAttributes.constructFromObject(data['attributes']);
      if (data.hasOwnProperty('meta'))
        obj.meta = CustomerMeta.constructFromObject(data['meta']);
    }
    return obj;
  }
}

/**
 * Allowed values for the <code>type</code> property.
 * @enum {String}
 * @readonly
 */
Customer.TypeEnum = {
  /**
   * value: "Customer"
   * @const
   */
  customer: "Customer"
};
/**
 * @member {module:model/Customer.TypeEnum} type
 */
Customer.prototype.type = undefined;

/**
 * @member {String} id
 */
Customer.prototype.id = undefined;

/**
 * @member {module:model/CustomerAttributes} attributes
 */
Customer.prototype.attributes = undefined;

/**
 * @member {module:model/CustomerMeta} meta
 */
Customer.prototype.meta = undefined;
