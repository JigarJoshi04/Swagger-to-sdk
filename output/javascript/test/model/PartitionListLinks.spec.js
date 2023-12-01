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
    describe('PartitionListLinks', function() {
      beforeEach(function() {
        instance = new AccountsApi.PartitionListLinks();
      });

      it('should create an instance of PartitionListLinks', function() {
        // TODO: update the code to test PartitionListLinks
        expect(instance).to.be.a(AccountsApi.PartitionListLinks);
      });

      it('should have the property self (base name: "self")', function() {
        // TODO: update the code to test the property self
        expect(instance).to.have.property('self');
        // expect(instance.self).to.be(expectedValueLiteral);
      });

      it('should have the property next (base name: "next")', function() {
        // TODO: update the code to test the property next
        expect(instance).to.have.property('next');
        // expect(instance.next).to.be(expectedValueLiteral);
      });

    });
  });

}));
