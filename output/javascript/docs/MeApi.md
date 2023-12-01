# AccountsApi.MeApi

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMeUsergroups**](MeApi.md#getMeUsergroups) | **GET** /me/usergroups | Get the usergroups of caller

<a name="getMeUsergroups"></a>
# **getMeUsergroups**
> UserGroupList getMeUsergroups(opts)

Get the usergroups of caller

Return list of the usergroup (user identity inferred from the SUB in the token) 

### Example
```javascript
import {AccountsApi} from 'accounts_api';
let defaultClient = AccountsApi.ApiClient.instance;


let apiInstance = new AccountsApi.MeApi();
let opts = { 
  'pageCursor': "pageCursor_example", // String | Cursor to fetch next paginated items
  'pageSize': 20 // Number | Max number of items to return in a page
};
apiInstance.getMeUsergroups(opts, (error, data, response) => {
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
 **pageCursor** | **String**| Cursor to fetch next paginated items | [optional] 
 **pageSize** | **Number**| Max number of items to return in a page | [optional] [default to 20]

### Return type

[**UserGroupList**](UserGroupList.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

