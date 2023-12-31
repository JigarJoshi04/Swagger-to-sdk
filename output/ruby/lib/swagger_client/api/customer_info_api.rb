=begin
#Accounts API

#Accounts API 

OpenAPI spec version: 0.9.5

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.27
=end

module SwaggerClient
  class CustomerInfoApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List Partitions for Customer
    # Get the partitions for the specified customer
    # @param customer_id Customer ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include include related resources
    # @return [InlineResponse200]
    def get_partitions(customer_id, opts = {})
      data, _status_code, _headers = get_partitions_with_http_info(customer_id, opts)
      data
    end

    # List Partitions for Customer
    # Get the partitions for the specified customer
    # @param customer_id Customer ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include include related resources
    # @return [Array<(InlineResponse200, Integer, Hash)>] InlineResponse200 data, response status code and response headers
    def get_partitions_with_http_info(customer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerInfoApi.get_partitions ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomerInfoApi.get_partitions"
      end
      # resource path
      local_var_path = '/customers/{customerId}/partitions'.sub('{' + 'customerId' + '}', customer_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'InlineResponse200' 

      auth_names = opts[:auth_names] || ['service_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerInfoApi#get_partitions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Roles for Customer
    # Get the roles available for specified customer ID
    # @param customer_id Customer ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_cursor Cursor to fetch next paginated items
    # @option opts [Integer] :page_size Max number of items to return in a page (default to 20)
    # @return [RoleList]
    def get_roles(customer_id, opts = {})
      data, _status_code, _headers = get_roles_with_http_info(customer_id, opts)
      data
    end

    # List Roles for Customer
    # Get the roles available for specified customer ID
    # @param customer_id Customer ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :page_cursor Cursor to fetch next paginated items
    # @option opts [Integer] :page_size Max number of items to return in a page
    # @return [Array<(RoleList, Integer, Hash)>] RoleList data, response status code and response headers
    def get_roles_with_http_info(customer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CustomerInfoApi.get_roles ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling CustomerInfoApi.get_roles"
      end
      # resource path
      local_var_path = '/customers/{customerId}/roles'.sub('{' + 'customerId' + '}', customer_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page[cursor]'] = opts[:'page_cursor'] if !opts[:'page_cursor'].nil?
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'RoleList' 

      auth_names = opts[:auth_names] || ['service_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CustomerInfoApi#get_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
