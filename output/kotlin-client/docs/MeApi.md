# MeApi

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMeUsergroups**](MeApi.md#getMeUsergroups) | **GET** /me/usergroups | Get the usergroups of caller

<a name="getMeUsergroups"></a>
# **getMeUsergroups**
> UserGroupList getMeUsergroups(page[cursor], page[size])

Get the usergroups of caller

Return list of the usergroup (user identity inferred from the SUB in the token) 

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = MeApi()
val page[cursor] : kotlin.String = page[cursor]_example // kotlin.String | Cursor to fetch next paginated items
val page[size] : kotlin.Int = 56 // kotlin.Int | Max number of items to return in a page
try {
    val result : UserGroupList = apiInstance.getMeUsergroups(page[cursor], page[size])
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MeApi#getMeUsergroups")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MeApi#getMeUsergroups")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page[cursor]** | **kotlin.String**| Cursor to fetch next paginated items | [optional]
 **page[size]** | **kotlin.Int**| Max number of items to return in a page | [optional] [default to 20] [enum: ]

### Return type

[**UserGroupList**](UserGroupList.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

