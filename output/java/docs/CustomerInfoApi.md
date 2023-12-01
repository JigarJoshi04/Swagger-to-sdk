# CustomerInfoApi

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPartitions**](CustomerInfoApi.md#getPartitions) | **GET** /customers/{customerId}/partitions | List Partitions for Customer

<a name="getPartitions"></a>
# **getPartitions**
> InlineResponse200 getPartitions(customerId, include)

List Partitions for Customer

Get the partitions for the specified customer

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.CustomerInfoApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();


CustomerInfoApi apiInstance = new CustomerInfoApi();
String customerId = "customerId_example"; // String | Customer ID
String include = "include_example"; // String | include related resources
try {
    InlineResponse200 result = apiInstance.getPartitions(customerId, include);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CustomerInfoApi#getPartitions");
    e.printStackTrace();
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

