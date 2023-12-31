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
 * The PartitionListLinks model module.
 * @module model/PartitionListLinks
 * @version 0.9.5
 */
export class PartitionListLinks {
  /**
   * Constructs a new <code>PartitionListLinks</code>.
   * @alias module:model/PartitionListLinks
   * @class
   * @param self {String} 
   */
  constructor(self) {
    this.self = self;
  }

  /**
   * Constructs a <code>PartitionListLinks</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/PartitionListLinks} obj Optional instance to populate.
   * @return {module:model/PartitionListLinks} The populated <code>PartitionListLinks</code> instance.
   */
  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new PartitionListLinks();
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
PartitionListLinks.prototype.self = undefined;

/**
 * @member {String} next
 */
PartitionListLinks.prototype.next = undefined;

