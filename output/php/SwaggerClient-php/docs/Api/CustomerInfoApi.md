# Swagger\Client\CustomerInfoApi

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPartitions**](CustomerInfoApi.md#getpartitions) | **GET** /customers/{customerId}/partitions | List Partitions for Customer
[**getRoles**](CustomerInfoApi.md#getroles) | **GET** /customers/{customerId}/roles | List Roles for Customer

# **getPartitions**
> \Swagger\Client\Model\InlineResponse200 getPartitions($customer_id, $include)

List Partitions for Customer

Get the partitions for the specified customer

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
    // Configure HTTP bearer authorization: service_auth
    $config = Swagger\Client\Configuration::getDefaultConfiguration()
    ->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Swagger\Client\Api\CustomerInfoApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$customer_id = "customer_id_example"; // string | Customer ID
$include = "include_example"; // string | include related resources

try {
    $result = $apiInstance->getPartitions($customer_id, $include);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CustomerInfoApi->getPartitions: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Customer ID |
 **include** | [**string**](../Model/.md)| include related resources | [optional]

### Return type

[**\Swagger\Client\Model\InlineResponse200**](../Model/InlineResponse200.md)

### Authorization

[service_auth](../../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getRoles**
> \Swagger\Client\Model\RoleList getRoles($customer_id, $page_cursor, $page_size)

List Roles for Customer

Get the roles available for specified customer ID

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
    // Configure HTTP bearer authorization: service_auth
    $config = Swagger\Client\Configuration::getDefaultConfiguration()
    ->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Swagger\Client\Api\CustomerInfoApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$customer_id = "customer_id_example"; // string | Customer ID
$page_cursor = "page_cursor_example"; // string | Cursor to fetch next paginated items
$page_size = 20; // int | Max number of items to return in a page

try {
    $result = $apiInstance->getRoles($customer_id, $page_cursor, $page_size);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CustomerInfoApi->getRoles: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **string**| Customer ID |
 **page_cursor** | **string**| Cursor to fetch next paginated items | [optional]
 **page_size** | **int**| Max number of items to return in a page | [optional] [default to 20]

### Return type

[**\Swagger\Client\Model\RoleList**](../Model/RoleList.md)

### Authorization

[service_auth](../../README.md#service_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.api+json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

