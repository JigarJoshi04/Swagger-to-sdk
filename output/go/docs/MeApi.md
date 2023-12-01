# {{classname}}

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetMeUsergroups**](MeApi.md#GetMeUsergroups) | **Get** /me/usergroups | Get the usergroups of caller

# **GetMeUsergroups**
> UserGroupList GetMeUsergroups(ctx, optional)
Get the usergroups of caller

Return list of the usergroup (user identity inferred from the SUB in the token) 

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***MeApiGetMeUsergroupsOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a MeApiGetMeUsergroupsOpts struct
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageCursor** | **optional.String**| Cursor to fetch next paginated items | 
 **pageSize** | **optional.Int32**| Max number of items to return in a page | [default to 20]

### Return type

[**UserGroupList**](UserGroupList.md)

### Authorization

[service_auth](../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

