# Swagger\Client\MeApi

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMeUsergroups**](MeApi.md#getmeusergroups) | **GET** /me/usergroups | Get the usergroups of caller

# **getMeUsergroups**
> \Swagger\Client\Model\UserGroupList getMeUsergroups($page_cursor, $page_size)

Get the usergroups of caller

Return list of the usergroup (user identity inferred from the SUB in the token)

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
    // Configure HTTP bearer authorization: service_auth
    $config = Swagger\Client\Configuration::getDefaultConfiguration()
    ->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Swagger\Client\Api\MeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$page_cursor = "page_cursor_example"; // string | Cursor to fetch next paginated items
$page_size = 20; // int | Max number of items to return in a page

try {
    $result = $apiInstance->getMeUsergroups($page_cursor, $page_size);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling MeApi->getMeUsergroups: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_cursor** | **string**| Cursor to fetch next paginated items | [optional]
 **page_size** | **int**| Max number of items to return in a page | [optional] [default to 20]

### Return type

[**\Swagger\Client\Model\UserGroupList**](../Model/UserGroupList.md)

### Authorization

[service_auth](../../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

