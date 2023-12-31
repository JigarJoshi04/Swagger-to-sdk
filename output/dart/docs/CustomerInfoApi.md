# swagger.api.CustomerInfoApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPartitions**](CustomerInfoApi.md#getPartitions) | **GET** /customers/{customerId}/partitions | List Partitions for Customer
[**getRoles**](CustomerInfoApi.md#getRoles) | **GET** /customers/{customerId}/roles | List Roles for Customer

# **getPartitions**
> InlineResponse200 getPartitions(customerId, include)

List Partitions for Customer

Get the partitions for the specified customer

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CustomerInfoApi();
var customerId = customerId_example; // String | Customer ID
var include = ; // String | include related resources

try {
    var result = api_instance.getPartitions(customerId, include);
    print(result);
} catch (e) {
    print("Exception when calling CustomerInfoApi->getPartitions: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**| Customer ID | 
 **include** | [**String**](.md)| include related resources | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRoles**
> RoleList getRoles(customerId, page[cursor], page[size])

List Roles for Customer

Get the roles available for specified customer ID

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new CustomerInfoApi();
var customerId = customerId_example; // String | Customer ID
var page[cursor] = page[cursor]_example; // String | Cursor to fetch next paginated items
var page[size] = 56; // int | Max number of items to return in a page

try {
    var result = api_instance.getRoles(customerId, page[cursor], page[size]);
    print(result);
} catch (e) {
    print("Exception when calling CustomerInfoApi->getRoles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **String**| Customer ID | 
 **page[cursor]** | **String**| Cursor to fetch next paginated items | [optional] 
 **page[size]** | **int**| Max number of items to return in a page | [optional] [default to 20]

### Return type

[**RoleList**](RoleList.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

