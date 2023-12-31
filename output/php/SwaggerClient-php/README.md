# SwaggerClient-php
Accounts API

This PHP package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 0.9.5
- Build package: io.swagger.codegen.v3.generators.php.PhpClientCodegen

## Requirements

PHP 5.5 and later

## Installation & Usage
### Composer

To install the bindings via [Composer](http://getcomposer.org/), add the following to `composer.json`:

```
{
  "repositories": [
    {
      "type": "git",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
    require_once('/path/to/SwaggerClient-php/vendor/autoload.php');
```

## Tests

To run the unit tests:

```
composer install
./vendor/bin/phpunit
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


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

## Documentation for API Endpoints

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CustomerInfoApi* | [**getPartitions**](docs/Api/CustomerInfoApi.md#getpartitions) | **GET** /customers/{customerId}/partitions | List Partitions for Customer
*CustomerInfoApi* | [**getRoles**](docs/Api/CustomerInfoApi.md#getroles) | **GET** /customers/{customerId}/roles | List Roles for Customer
*MeApi* | [**getMeUsergroups**](docs/Api/MeApi.md#getmeusergroups) | **GET** /me/usergroups | Get the usergroups of caller

## Documentation For Models

 - [Customer](docs/Model/Customer.md)
 - [CustomerAttributes](docs/Model/CustomerAttributes.md)
 - [CustomerList](docs/Model/CustomerList.md)
 - [CustomerListLinks](docs/Model/CustomerListLinks.md)
 - [CustomerMeta](docs/Model/CustomerMeta.md)
 - [CustomerRelationship](docs/Model/CustomerRelationship.md)
 - [CustomerRelationshipData](docs/Model/CustomerRelationshipData.md)
 - [Error](docs/Model/Error.md)
 - [ErrorErrors](docs/Model/ErrorErrors.md)
 - [InlineResponse200](docs/Model/InlineResponse200.md)
 - [MachineUser](docs/Model/MachineUser.md)
 - [MachineUserMeta](docs/Model/MachineUserMeta.md)
 - [MachineUserOAuth](docs/Model/MachineUserOAuth.md)
 - [MachineUserRelationships](docs/Model/MachineUserRelationships.md)
 - [MachineUserResponseAttributes](docs/Model/MachineUserResponseAttributes.md)
 - [MachineUserState](docs/Model/MachineUserState.md)
 - [MetaCompany](docs/Model/MetaCompany.md)
 - [PagedUserGroupListResponse](docs/Model/PagedUserGroupListResponse.md)
 - [PagedUserGroupListResponseLinks](docs/Model/PagedUserGroupListResponseLinks.md)
 - [Partition](docs/Model/Partition.md)
 - [PartitionAttributes](docs/Model/PartitionAttributes.md)
 - [PartitionList](docs/Model/PartitionList.md)
 - [PartitionListAttributes](docs/Model/PartitionListAttributes.md)
 - [PartitionListIncluded](docs/Model/PartitionListIncluded.md)
 - [PartitionListLinks](docs/Model/PartitionListLinks.md)
 - [PartitionRelationship](docs/Model/PartitionRelationship.md)
 - [PartitionRelationshipData](docs/Model/PartitionRelationshipData.md)
 - [PartitionRelationships](docs/Model/PartitionRelationships.md)
 - [Role](docs/Model/Role.md)
 - [RoleAttributes](docs/Model/RoleAttributes.md)
 - [RoleList](docs/Model/RoleList.md)
 - [RoleListLinks](docs/Model/RoleListLinks.md)
 - [RoleRelationship](docs/Model/RoleRelationship.md)
 - [RoleRelationshipData](docs/Model/RoleRelationshipData.md)
 - [User](docs/Model/User.md)
 - [UserGroup](docs/Model/UserGroup.md)
 - [UserGroupAttributes](docs/Model/UserGroupAttributes.md)
 - [UserGroupList](docs/Model/UserGroupList.md)
 - [UserGroupListLinks](docs/Model/UserGroupListLinks.md)
 - [UserGroupListResponseData](docs/Model/UserGroupListResponseData.md)
 - [UserGroupRelationship](docs/Model/UserGroupRelationship.md)
 - [UserGroupRelationshipData](docs/Model/UserGroupRelationshipData.md)
 - [UserGroupRelationships](docs/Model/UserGroupRelationships.md)
 - [UserGroupResponseAttribute](docs/Model/UserGroupResponseAttribute.md)
 - [UserGroupResponseData](docs/Model/UserGroupResponseData.md)
 - [UserMembershipAttributes](docs/Model/UserMembershipAttributes.md)
 - [UserRelationships](docs/Model/UserRelationships.md)
 - [UserResponseAttributes](docs/Model/UserResponseAttributes.md)
 - [UserResponseAttributesIdentity](docs/Model/UserResponseAttributesIdentity.md)
 - [UserResponseAttributesProfile](docs/Model/UserResponseAttributesProfile.md)

## Documentation For Authorization


## service_auth

- **Type**: HTTP bearer authentication


## Author



