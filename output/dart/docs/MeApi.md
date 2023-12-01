# swagger.api.MeApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMeUsergroups**](MeApi.md#getMeUsergroups) | **GET** /me/usergroups | Get the usergroups of caller

# **getMeUsergroups**
> UserGroupList getMeUsergroups(page[cursor], page[size])

Get the usergroups of caller

Return list of the usergroup (user identity inferred from the SUB in the token) 

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MeApi();
var page[cursor] = page[cursor]_example; // String | Cursor to fetch next paginated items
var page[size] = 56; // int | Max number of items to return in a page

try {
    var result = api_instance.getMeUsergroups(page[cursor], page[size]);
    print(result);
} catch (e) {
    print("Exception when calling MeApi->getMeUsergroups: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page[cursor]** | **String**| Cursor to fetch next paginated items | [optional] 
 **page[size]** | **int**| Max number of items to return in a page | [optional] [default to 20]

### Return type

[**UserGroupList**](UserGroupList.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

