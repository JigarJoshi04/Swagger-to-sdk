# swagger_client.MeApi

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_me_usergroups**](MeApi.md#get_me_usergroups) | **GET** /me/usergroups | Get the usergroups of caller

# **get_me_usergroups**
> UserGroupList get_me_usergroups(page_cursor=page_cursor, page_size=page_size)

Get the usergroups of caller

Return list of the usergroup (user identity inferred from the SUB in the token) 

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint


# create an instance of the API class
api_instance = swagger_client.MeApi(swagger_client.ApiClient(configuration))
page_cursor = 'page_cursor_example' # str | Cursor to fetch next paginated items (optional)
page_size = 20 # int | Max number of items to return in a page (optional) (default to 20)

try:
    # Get the usergroups of caller
    api_response = api_instance.get_me_usergroups(page_cursor=page_cursor, page_size=page_size)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MeApi->get_me_usergroups: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_cursor** | **str**| Cursor to fetch next paginated items | [optional] 
 **page_size** | **int**| Max number of items to return in a page | [optional] [default to 20]

### Return type

[**UserGroupList**](UserGroupList.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

