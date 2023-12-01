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
(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', '../../src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require('../../src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.AccountsApi);
  }
}(this, function(expect, AccountsApi) {
  'use strict';

  var instance;

  describe('(package)', function() {
    describe('UserGroupListResponseData', function() {
      beforeEach(function() {
        instance = new AccountsApi.UserGroupListResponseData();
      });

      it('should create an instance of UserGroupListResponseData', function() {
        // TODO: update the code to test UserGroupListResponseData
        expect(instance).to.be.a(AccountsApi.UserGroupListResponseData);
      });

    });
  });

}));
