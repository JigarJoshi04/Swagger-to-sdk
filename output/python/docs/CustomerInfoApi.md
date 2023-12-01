# swagger_client.CustomerInfoApi

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_partitions**](CustomerInfoApi.md#get_partitions) | **GET** /customers/{customerId}/partitions | List Partitions for Customer

# **get_partitions**
> InlineResponse200 get_partitions(customer_id, include=include)

List Partitions for Customer

Get the partitions for the specified customer

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint


# create an instance of the API class
api_instance = swagger_client.CustomerInfoApi(swagger_client.ApiClient(configuration))
customer_id = 'customer_id_example' # str | Customer ID
include = 'include_example' # str | include related resources (optional)

try:
    # List Partitions for Customer
    api_response = api_instance.get_partitions(customer_id, include=include)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CustomerInfoApi->get_partitions: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **str**| Customer ID | 
 **include** | [**str**](.md)| include related resources | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

