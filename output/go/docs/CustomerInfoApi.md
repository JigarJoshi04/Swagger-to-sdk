# {{classname}}

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetPartitions**](CustomerInfoApi.md#GetPartitions) | **Get** /customers/{customerId}/partitions | List Partitions for Customer
[**GetRoles**](CustomerInfoApi.md#GetRoles) | **Get** /customers/{customerId}/roles | List Roles for Customer

# **GetPartitions**
> InlineResponse200 GetPartitions(ctx, customerId, optional)
List Partitions for Customer

Get the partitions for the specified customer

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **customerId** | **string**| Customer ID | 
 **optional** | ***CustomerInfoApiGetPartitionsOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a CustomerInfoApiGetPartitionsOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **include** | [**optional.Interface of string**](.md)| include related resources | 

### Return type

[**InlineResponse200**](inline_response_200.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetRoles**
> RoleList GetRoles(ctx, customerId, optional)
List Roles for Customer

Get the roles available for specified customer ID

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **customerId** | **string**| Customer ID | 
 **optional** | ***CustomerInfoApiGetRolesOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a CustomerInfoApiGetRolesOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **pageCursor** | **optional.String**| Cursor to fetch next paginated items | 
 **pageSize** | **optional.Int32**| Max number of items to return in a page | [default to 20]

### Return type

[**RoleList**](RoleList.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

