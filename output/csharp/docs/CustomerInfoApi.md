# IO.Swagger.Api.CustomerInfoApi

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetPartitions**](CustomerInfoApi.md#getpartitions) | **GET** /customers/{customerId}/partitions | List Partitions for Customer
[**GetRoles**](CustomerInfoApi.md#getroles) | **GET** /customers/{customerId}/roles | List Roles for Customer

<a name="getpartitions"></a>
# **GetPartitions**
> InlineResponse200 GetPartitions (string customerId, string include = null)

List Partitions for Customer

Get the partitions for the specified customer

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetPartitionsExample
    {
        public void main()
        {

            var apiInstance = new CustomerInfoApi();
            var customerId = customerId_example;  // string | Customer ID
            var include = new string(); // string | include related resources (optional) 

            try
            {
                // List Partitions for Customer
                InlineResponse200 result = apiInstance.GetPartitions(customerId, include);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CustomerInfoApi.GetPartitions: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **string**| Customer ID | 
 **include** | [**string**](string.md)| include related resources | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="getroles"></a>
# **GetRoles**
> RoleList GetRoles (string customerId, string pageCursor = null, int? pageSize = null)

List Roles for Customer

Get the roles available for specified customer ID

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetRolesExample
    {
        public void main()
        {

            var apiInstance = new CustomerInfoApi();
            var customerId = customerId_example;  // string | Customer ID
            var pageCursor = pageCursor_example;  // string | Cursor to fetch next paginated items (optional) 
            var pageSize = 56;  // int? | Max number of items to return in a page (optional)  (default to 20)

            try
            {
                // List Roles for Customer
                RoleList result = apiInstance.GetRoles(customerId, pageCursor, pageSize);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CustomerInfoApi.GetRoles: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **string**| Customer ID | 
 **pageCursor** | **string**| Cursor to fetch next paginated items | [optional] 
 **pageSize** | **int?**| Max number of items to return in a page | [optional] [default to 20]

### Return type

[**RoleList**](RoleList.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
