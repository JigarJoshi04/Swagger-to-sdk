# IO.Swagger.Api.MeApi

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetMeUsergroups**](MeApi.md#getmeusergroups) | **GET** /me/usergroups | Get the usergroups of caller

<a name="getmeusergroups"></a>
# **GetMeUsergroups**
> UserGroupList GetMeUsergroups (string pageCursor = null, int? pageSize = null)

Get the usergroups of caller

Return list of the usergroup (user identity inferred from the SUB in the token) 

### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class GetMeUsergroupsExample
    {
        public void main()
        {

            var apiInstance = new MeApi();
            var pageCursor = pageCursor_example;  // string | Cursor to fetch next paginated items (optional) 
            var pageSize = 56;  // int? | Max number of items to return in a page (optional)  (default to 20)

            try
            {
                // Get the usergroups of caller
                UserGroupList result = apiInstance.GetMeUsergroups(pageCursor, pageSize);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MeApi.GetMeUsergroups: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageCursor** | **string**| Cursor to fetch next paginated items | [optional] 
 **pageSize** | **int?**| Max number of items to return in a page | [optional] [default to 20]

### Return type

[**UserGroupList**](UserGroupList.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
