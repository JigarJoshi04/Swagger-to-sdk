=begin
#Accounts API

#Accounts API 

OpenAPI spec version: 0.9.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.27
=end

require 'spec_helper'

describe SwaggerClient::Configuration do
  let(:config) { SwaggerClient::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://api.bpcloud.siemens.com/accounts")
    # SwaggerClient.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://api.bpcloud.siemens.com/accounts")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://api.bpcloud.siemens.com/accounts")
      end
    end
  end
end
