# io.swagger.server - Kotlin Server library for Accounts API

Accounts API


Generated by Swagger Codegen 3.0.27 (2023-12-01T06:30:52.578840Z[Etc/UTC]).

## Requires

* Kotlin 1.2.10
* Gradle 4.3

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

## Running

The server builds as a fat jar with a main entrypoint. To start the service, run `java -jar ./build/libs/kotlin-server.jar`.

You may also run in docker:

```
docker build -t kotlin-server .
docker run -p 8080:8080 kotlin-server
```

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs (see ktor documentation for more info).
* ~Supports collection formats for query parameters: csv, tsv, ssv, pipes.~
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in Swagger definitions.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CustomerInfoApi* | [**getPartitions**](docs/CustomerInfoApi.md#getpartitions) | **GET** /customers/{customerId}/partitions | List Partitions for Customer
*CustomerInfoApi* | [**getRoles**](docs/CustomerInfoApi.md#getroles) | **GET** /customers/{customerId}/roles | List Roles for Customer
*MeApi* | [**getMeUsergroups**](docs/MeApi.md#getmeusergroups) | **GET** /me/usergroups | Get the usergroups of caller

<a name="documentation-for-models"></a>
## Documentation for Models

 - [io.swagger.server.models.Customer](docs/Customer.md)
 - [io.swagger.server.models.CustomerAttributes](docs/CustomerAttributes.md)
 - [io.swagger.server.models.CustomerList](docs/CustomerList.md)
 - [io.swagger.server.models.CustomerListLinks](docs/CustomerListLinks.md)
 - [io.swagger.server.models.CustomerMeta](docs/CustomerMeta.md)
 - [io.swagger.server.models.CustomerRelationship](docs/CustomerRelationship.md)
 - [io.swagger.server.models.CustomerRelationshipData](docs/CustomerRelationshipData.md)
 - [io.swagger.server.models.Error](docs/Error.md)
 - [io.swagger.server.models.ErrorErrors](docs/ErrorErrors.md)
 - [io.swagger.server.models.InlineResponse200](docs/InlineResponse200.md)
 - [io.swagger.server.models.MachineUser](docs/MachineUser.md)
 - [io.swagger.server.models.MachineUserMeta](docs/MachineUserMeta.md)
 - [io.swagger.server.models.MachineUserOAuth](docs/MachineUserOAuth.md)
 - [io.swagger.server.models.MachineUserRelationships](docs/MachineUserRelationships.md)
 - [io.swagger.server.models.MachineUserResponseAttributes](docs/MachineUserResponseAttributes.md)
 - [io.swagger.server.models.MachineUserState](docs/MachineUserState.md)
 - [io.swagger.server.models.MetaCompany](docs/MetaCompany.md)
 - [io.swagger.server.models.PagedUserGroupListResponse](docs/PagedUserGroupListResponse.md)
 - [io.swagger.server.models.PagedUserGroupListResponseLinks](docs/PagedUserGroupListResponseLinks.md)
 - [io.swagger.server.models.Partition](docs/Partition.md)
 - [io.swagger.server.models.PartitionAttributes](docs/PartitionAttributes.md)
 - [io.swagger.server.models.PartitionList](docs/PartitionList.md)
 - [io.swagger.server.models.PartitionListAttributes](docs/PartitionListAttributes.md)
 - [io.swagger.server.models.PartitionListIncluded](docs/PartitionListIncluded.md)
 - [io.swagger.server.models.PartitionListLinks](docs/PartitionListLinks.md)
 - [io.swagger.server.models.PartitionRelationship](docs/PartitionRelationship.md)
 - [io.swagger.server.models.PartitionRelationshipData](docs/PartitionRelationshipData.md)
 - [io.swagger.server.models.PartitionRelationships](docs/PartitionRelationships.md)
 - [io.swagger.server.models.Role](docs/Role.md)
 - [io.swagger.server.models.RoleAttributes](docs/RoleAttributes.md)
 - [io.swagger.server.models.RoleList](docs/RoleList.md)
 - [io.swagger.server.models.RoleListLinks](docs/RoleListLinks.md)
 - [io.swagger.server.models.RoleRelationship](docs/RoleRelationship.md)
 - [io.swagger.server.models.RoleRelationshipData](docs/RoleRelationshipData.md)
 - [io.swagger.server.models.User](docs/User.md)
 - [io.swagger.server.models.UserGroup](docs/UserGroup.md)
 - [io.swagger.server.models.UserGroupAttributes](docs/UserGroupAttributes.md)
 - [io.swagger.server.models.UserGroupList](docs/UserGroupList.md)
 - [io.swagger.server.models.UserGroupListLinks](docs/UserGroupListLinks.md)
 - [io.swagger.server.models.UserGroupListResponseData](docs/UserGroupListResponseData.md)
 - [io.swagger.server.models.UserGroupRelationship](docs/UserGroupRelationship.md)
 - [io.swagger.server.models.UserGroupRelationshipData](docs/UserGroupRelationshipData.md)
 - [io.swagger.server.models.UserGroupRelationships](docs/UserGroupRelationships.md)
 - [io.swagger.server.models.UserGroupResponseAttribute](docs/UserGroupResponseAttribute.md)
 - [io.swagger.server.models.UserGroupResponseData](docs/UserGroupResponseData.md)
 - [io.swagger.server.models.UserMembershipAttributes](docs/UserMembershipAttributes.md)
 - [io.swagger.server.models.UserRelationships](docs/UserRelationships.md)
 - [io.swagger.server.models.UserResponseAttributes](docs/UserResponseAttributes.md)
 - [io.swagger.server.models.UserResponseAttributesIdentity](docs/UserResponseAttributesIdentity.md)
 - [io.swagger.server.models.UserResponseAttributesProfile](docs/UserResponseAttributesProfile.md)

<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="service_auth"></a>
### service_auth


