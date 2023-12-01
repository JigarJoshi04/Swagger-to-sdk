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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = CustomerInfoApi()
val customerId : kotlin.String = customerId_example // kotlin.String | Customer ID
val include : kotlin.String =  // kotlin.String | include related resources
try {
    val result : InlineResponse200 = apiInstance.getPartitions(customerId, include)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling CustomerInfoApi#getPartitions")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling CustomerInfoApi#getPartitions")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customerId** | **kotlin.String**| Customer ID |
 **include** | [**kotlin.String**](.md)| include related resources | [optional]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

