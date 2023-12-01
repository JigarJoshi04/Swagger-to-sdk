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
 * The MetaCompany model module.
 * @module model/MetaCompany
 * @version 0.9.5
 */
export class MetaCompany {
  /**
   * Constructs a new <code>MetaCompany</code>.
   * @alias module:model/MetaCompany
   * @class
   * @param name {String} 
   */
  constructor(name) {
    this.name = name;
  }

  /**
   * Constructs a <code>MetaCompany</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/MetaCompany} obj Optional instance to populate.
   * @return {module:model/MetaCompany} The populated <code>MetaCompany</code> instance.
   */
  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new MetaCompany();
      if (data.hasOwnProperty('name'))
        obj.name = ApiClient.convertToType(data['name'], 'String');
    }
    return obj;
  }
}

/**
 * @member {String} name
 */
MetaCompany.prototype.name = undefined;
