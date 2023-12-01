# io.swagger.client - Kotlin client library for Accounts API

## Requires

* Kotlin 1.4.30
* Gradle 5.3

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in Swagger definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CustomerInfoApi* | [**getPartitions**](docs/CustomerInfoApi.md#getpartitions) | **GET** /customers/{customerId}/partitions | List Partitions for Customer
*MeApi* | [**getMeUsergroups**](docs/MeApi.md#getmeusergroups) | **GET** /me/usergroups | Get the usergroups of caller

<a name="documentation-for-models"></a>
## Documentation for Models

 - [io.swagger.client.models.Customer](docs/Customer.md)
 - [io.swagger.client.models.CustomerAttributes](docs/CustomerAttributes.md)
 - [io.swagger.client.models.CustomerList](docs/CustomerList.md)
 - [io.swagger.client.models.CustomerListLinks](docs/CustomerListLinks.md)
 - [io.swagger.client.models.CustomerMeta](docs/CustomerMeta.md)
 - [io.swagger.client.models.CustomerRelationship](docs/CustomerRelationship.md)
 - [io.swagger.client.models.CustomerRelationshipData](docs/CustomerRelationshipData.md)
 - [io.swagger.client.models.Error](docs/Error.md)
 - [io.swagger.client.models.ErrorErrors](docs/ErrorErrors.md)
 - [io.swagger.client.models.InlineResponse200](docs/InlineResponse200.md)
 - [io.swagger.client.models.MachineUser](docs/MachineUser.md)
 - [io.swagger.client.models.MachineUserMeta](docs/MachineUserMeta.md)
 - [io.swagger.client.models.MachineUserOAuth](docs/MachineUserOAuth.md)
 - [io.swagger.client.models.MachineUserRelationships](docs/MachineUserRelationships.md)
 - [io.swagger.client.models.MachineUserResponseAttributes](docs/MachineUserResponseAttributes.md)
 - [io.swagger.client.models.MachineUserState](docs/MachineUserState.md)
 - [io.swagger.client.models.MetaCompany](docs/MetaCompany.md)
 - [io.swagger.client.models.PagedUserGroupListResponse](docs/PagedUserGroupListResponse.md)
 - [io.swagger.client.models.PagedUserGroupListResponseLinks](docs/PagedUserGroupListResponseLinks.md)
 - [io.swagger.client.models.Partition](docs/Partition.md)
 - [io.swagger.client.models.PartitionAttributes](docs/PartitionAttributes.md)
 - [io.swagger.client.models.PartitionList](docs/PartitionList.md)
 - [io.swagger.client.models.PartitionListAttributes](docs/PartitionListAttributes.md)
 - [io.swagger.client.models.PartitionListIncluded](docs/PartitionListIncluded.md)
 - [io.swagger.client.models.PartitionListLinks](docs/PartitionListLinks.md)
 - [io.swagger.client.models.PartitionRelationship](docs/PartitionRelationship.md)
 - [io.swagger.client.models.PartitionRelationshipData](docs/PartitionRelationshipData.md)
 - [io.swagger.client.models.PartitionRelationships](docs/PartitionRelationships.md)
 - [io.swagger.client.models.Role](docs/Role.md)
 - [io.swagger.client.models.RoleAttributes](docs/RoleAttributes.md)
 - [io.swagger.client.models.RoleList](docs/RoleList.md)
 - [io.swagger.client.models.RoleListLinks](docs/RoleListLinks.md)
 - [io.swagger.client.models.RoleRelationship](docs/RoleRelationship.md)
 - [io.swagger.client.models.RoleRelationshipData](docs/RoleRelationshipData.md)
 - [io.swagger.client.models.User](docs/User.md)
 - [io.swagger.client.models.UserGroup](docs/UserGroup.md)
 - [io.swagger.client.models.UserGroupAttributes](docs/UserGroupAttributes.md)
 - [io.swagger.client.models.UserGroupList](docs/UserGroupList.md)
 - [io.swagger.client.models.UserGroupListLinks](docs/UserGroupListLinks.md)
 - [io.swagger.client.models.UserGroupListResponseData](docs/UserGroupListResponseData.md)
 - [io.swagger.client.models.UserGroupRelationship](docs/UserGroupRelationship.md)
 - [io.swagger.client.models.UserGroupRelationshipData](docs/UserGroupRelationshipData.md)
 - [io.swagger.client.models.UserGroupRelationships](docs/UserGroupRelationships.md)
 - [io.swagger.client.models.UserGroupResponseAttribute](docs/UserGroupResponseAttribute.md)
 - [io.swagger.client.models.UserGroupResponseData](docs/UserGroupResponseData.md)
 - [io.swagger.client.models.UserMembershipAttributes](docs/UserMembershipAttributes.md)
 - [io.swagger.client.models.UserRelationships](docs/UserRelationships.md)
 - [io.swagger.client.models.UserResponseAttributes](docs/UserResponseAttributes.md)
 - [io.swagger.client.models.UserResponseAttributesIdentity](docs/UserResponseAttributesIdentity.md)
 - [io.swagger.client.models.UserResponseAttributesProfile](docs/UserResponseAttributesProfile.md)

<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="service_auth"></a>
### service_auth


