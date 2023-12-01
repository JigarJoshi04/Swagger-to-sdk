# SwaggerClient::MeApi

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_me_usergroups**](MeApi.md#get_me_usergroups) | **GET** /me/usergroups | Get the usergroups of caller

# **get_me_usergroups**
> UserGroupList get_me_usergroups(opts)

Get the usergroups of caller

Return list of the usergroup (user identity inferred from the SUB in the token) 

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
end

api_instance = SwaggerClient::MeApi.new
opts = { 
  page_cursor: 'page_cursor_example', # String | Cursor to fetch next paginated items
  page_size: 20 # Integer | Max number of items to return in a page
}

begin
  #Get the usergroups of caller
  result = api_instance.get_me_usergroups(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MeApi->get_me_usergroups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_cursor** | **String**| Cursor to fetch next paginated items | [optional] 
 **page_size** | **Integer**| Max number of items to return in a page | [optional] [default to 20]

### Return type

[**UserGroupList**](UserGroupList.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json



