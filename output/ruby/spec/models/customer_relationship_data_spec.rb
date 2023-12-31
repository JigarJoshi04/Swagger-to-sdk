=begin
#Accounts API

#Accounts API 

OpenAPI spec version: 0.9.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.27
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::CustomerRelationshipData
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CustomerRelationshipData' do
  before do
    # run before each test
    @instance = SwaggerClient::CustomerRelationshipData.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomerRelationshipData' do
    it 'should create an instance of CustomerRelationshipData' do
      expect(@instance).to be_instance_of(SwaggerClient::CustomerRelationshipData)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Customer"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
