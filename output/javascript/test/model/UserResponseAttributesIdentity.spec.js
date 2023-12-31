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
    describe('UserResponseAttributesIdentity', function() {
      beforeEach(function() {
        instance = new AccountsApi.UserResponseAttributesIdentity();
      });

      it('should create an instance of UserResponseAttributesIdentity', function() {
        // TODO: update the code to test UserResponseAttributesIdentity
        expect(instance).to.be.a(AccountsApi.UserResponseAttributesIdentity);
      });

      it('should have the property emailId (base name: "emailId")', function() {
        // TODO: update the code to test the property emailId
        expect(instance).to.have.property('emailId');
        // expect(instance.emailId).to.be(expectedValueLiteral);
      });

      it('should have the property externalId (base name: "externalId")', function() {
        // TODO: update the code to test the property externalId
        expect(instance).to.have.property('externalId');
        // expect(instance.externalId).to.be(expectedValueLiteral);
      });

      it('should have the property familyName (base name: "familyName")', function() {
        // TODO: update the code to test the property familyName
        expect(instance).to.have.property('familyName');
        // expect(instance.familyName).to.be(expectedValueLiteral);
      });

      it('should have the property fullName (base name: "fullName")', function() {
        // TODO: update the code to test the property fullName
        expect(instance).to.have.property('fullName');
        // expect(instance.fullName).to.be(expectedValueLiteral);
      });

      it('should have the property givenName (base name: "givenName")', function() {
        // TODO: update the code to test the property givenName
        expect(instance).to.have.property('givenName');
        // expect(instance.givenName).to.be(expectedValueLiteral);
      });

    });
  });

}));
