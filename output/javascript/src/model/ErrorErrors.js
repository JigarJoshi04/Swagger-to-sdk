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
 * The ErrorErrors model module.
 * @module model/ErrorErrors
 * @version 0.9.5
 */
export class ErrorErrors {
  /**
   * Constructs a new <code>ErrorErrors</code>.
   * @alias module:model/ErrorErrors
   * @class
   * @param id {String} A unique identifier for this particular occurrence of the problem.
   * @param status {String} The HTTP status code applicable to this problem, expressed as a string value.
   * @param title {String} A short, human-readable summary of the problem that SHOULD NOT change from occurrence to occurrence of the problem, except for purposes of localization.
   */
  constructor(id, status, title) {
    this.id = id;
    this.status = status;
    this.title = title;
  }

  /**
   * Constructs a <code>ErrorErrors</code> from a plain JavaScript object, optionally creating a new instance.
   * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
   * @param {Object} data The plain JavaScript object bearing properties of interest.
   * @param {module:model/ErrorErrors} obj Optional instance to populate.
   * @return {module:model/ErrorErrors} The populated <code>ErrorErrors</code> instance.
   */
  static constructFromObject(data, obj) {
    if (data) {
      obj = obj || new ErrorErrors();
      if (data.hasOwnProperty('id'))
        obj.id = ApiClient.convertToType(data['id'], 'String');
      if (data.hasOwnProperty('code'))
        obj.code = ApiClient.convertToType(data['code'], 'String');
      if (data.hasOwnProperty('status'))
        obj.status = ApiClient.convertToType(data['status'], 'String');
      if (data.hasOwnProperty('title'))
        obj.title = ApiClient.convertToType(data['title'], 'String');
      if (data.hasOwnProperty('detail'))
        obj.detail = ApiClient.convertToType(data['detail'], 'String');
    }
    return obj;
  }
}

/**
 * A unique identifier for this particular occurrence of the problem.
 * @member {String} id
 */
ErrorErrors.prototype.id = undefined;

/**
 * An application-specific error code, expressed as a string value.
 * @member {String} code
 */
ErrorErrors.prototype.code = undefined;

/**
 * The HTTP status code applicable to this problem, expressed as a string value.
 * @member {String} status
 */
ErrorErrors.prototype.status = undefined;

/**
 * A short, human-readable summary of the problem that SHOULD NOT change from occurrence to occurrence of the problem, except for purposes of localization.
 * @member {String} title
 */
ErrorErrors.prototype.title = undefined;

/**
 * a human-readable explanation specific to this occurrence of the problem. Like title, this field’s value can be localized.
 * @member {String} detail
 */
ErrorErrors.prototype.detail = undefined;

