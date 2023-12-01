# swagger_client.CustomerInfoApi

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_partitions**](CustomerInfoApi.md#get_partitions) | **GET** /customers/{customerId}/partitions | List Partitions for Customer
[**get_roles**](CustomerInfoApi.md#get_roles) | **GET** /customers/{customerId}/roles | List Roles for Customer

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

# **get_roles**
> RoleList get_roles(customer_id, page_cursor=page_cursor, page_size=page_size)

List Roles for Customer

Get the roles available for specified customer ID

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
page_cursor = 'page_cursor_example' # str | Cursor to fetch next paginated items (optional)
page_size = 20 # int | Max number of items to return in a page (optional) (default to 20)

try:
    # List Roles for Customer
    api_response = api_instance.get_roles(customer_id, page_cursor=page_cursor, page_size=page_size)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling CustomerInfoApi->get_roles: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **str**| Customer ID | 
 **page_cursor** | **str**| Cursor to fetch next paginated items | [optional] 
 **page_size** | **int**| Max number of items to return in a page | [optional] [default to 20]

### Return type

[**RoleList**](RoleList.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

