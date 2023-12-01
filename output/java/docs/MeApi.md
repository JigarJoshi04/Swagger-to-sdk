# MeApi

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMeUsergroups**](MeApi.md#getMeUsergroups) | **GET** /me/usergroups | Get the usergroups of caller

<a name="getMeUsergroups"></a>
# **getMeUsergroups**
> UserGroupList getMeUsergroups(pageCursor, pageSize)

Get the usergroups of caller

Return list of the usergroup (user identity inferred from the SUB in the token) 

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.MeApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


MeApi apiInstance = new MeApi();
String pageCursor = "pageCursor_example"; // String | Cursor to fetch next paginated items
Integer pageSize = 20; // Integer | Max number of items to return in a page
try {
    UserGroupList result = apiInstance.getMeUsergroups(pageCursor, pageSize);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MeApi#getMeUsergroups");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageCursor** | **String**| Cursor to fetch next paginated items | [optional]
 **pageSize** | **Integer**| Max number of items to return in a page | [optional] [default to 20] [enum: ]

### Return type

[**UserGroupList**](UserGroupList.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

