# SwaggerClient::CustomerInfoApi

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_partitions**](CustomerInfoApi.md#get_partitions) | **GET** /customers/{customerId}/partitions | List Partitions for Customer
[**get_roles**](CustomerInfoApi.md#get_roles) | **GET** /customers/{customerId}/roles | List Roles for Customer

# **get_partitions**
> InlineResponse200 get_partitions(customer_id, opts)

List Partitions for Customer

Get the partitions for the specified customer

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::CustomerInfoApi.new
customer_id = 'customer_id_example' # String | Customer ID
opts = { 
  include: 'include_example' # String | include related resources
}

begin
  #List Partitions for Customer
  result = api_instance.get_partitions(customer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomerInfoApi->get_partitions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **include** | [**String**](.md)| include related resources | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



# **get_roles**
> RoleList get_roles(customer_id, opts)

List Roles for Customer

Get the roles available for specified customer ID

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::CustomerInfoApi.new
customer_id = 'customer_id_example' # String | Customer ID
opts = { 
  page_cursor: 'page_cursor_example', # String | Cursor to fetch next paginated items
  page_size: 20 # Integer | Max number of items to return in a page
}

begin
  #List Roles for Customer
  result = api_instance.get_roles(customer_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CustomerInfoApi->get_roles: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Customer ID | 
 **page_cursor** | **String**| Cursor to fetch next paginated items | [optional] 
 **page_size** | **Integer**| Max number of items to return in a page | [optional] [default to 20]

### Return type

[**RoleList**](RoleList.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



