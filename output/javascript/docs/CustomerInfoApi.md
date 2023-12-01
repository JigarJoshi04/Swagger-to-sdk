# AccountsApi.CustomerInfoApi

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPartitions**](CustomerInfoApi.md#getPartitions) | **GET** /customers/{customerId}/partitions | List Partitions for Customer

<a name="getPartitions"></a>
# **getPartitions**
> InlineResponse200 getPartitions(customerId, opts)

List Partitions for Customer

Get the partitions for the specified customer

### Example
```javascript
import {AccountsApi} from 'accounts_api';
let defaultClient = AccountsApi.ApiClient.instance;


let apiInstance = new AccountsApi.CustomerInfoApi();
let customerId = "customerId_example"; // String | Customer ID
let opts = { 
  'include': "include_example" // String | include related resources
};
apiInstance.getPartitions(customerId, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

