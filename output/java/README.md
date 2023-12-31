# swagger-java-client

Accounts API
- API version: 0.9.5
  - Build date: 2023-12-01T06:22:45.936666Z[Etc/UTC]

Accounts API 


*Automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen)*


## Requirements

Building the API client library requires:
1. Java 1.7+
2. Maven/Gradle

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn clean install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn clean deploy
```

Refer to the [OSSRH Guide](http://central.sonatype.org/pages/ossrh-guide.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
  <groupId>io.swagger</groupId>
  <artifactId>swagger-java-client</artifactId>
  <version>1.0.0</version>
  <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "io.swagger:swagger-java-client:1.0.0"
```

### Others

At first generate the JAR by executing:

```shell
mvn clean package
```

Then manually install the following JARs:

* `target/swagger-java-client-1.0.0.jar`
* `target/lib/*.jar`

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java
import io.swagger.client.*;
import io.swagger.client.auth.*;
import io.swagger.client.model.*;
import io.swagger.client.api.CustomerInfoApi;

import java.io.File;
import java.util.*;

public class CustomerInfoApiExample {

    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();


        CustomerInfoApi apiInstance = new CustomerInfoApi();
        String customerId = "customerId_example"; // String | Customer ID
        String include = "include_example"; // String | include related resources
        try {
            InlineResponse200 result = apiInstance.getPartitions(customerId, include);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling CustomerInfoApi#getPartitions");
            e.printStackTrace();
        }
    }
}
import io.swagger.client.*;
import io.swagger.client.auth.*;
import io.swagger.client.model.*;
import io.swagger.client.api.CustomerInfoApi;

import java.io.File;
import java.util.*;

public class CustomerInfoApiExample {

    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();


        CustomerInfoApi apiInstance = new CustomerInfoApi();
        String customerId = "customerId_example"; // String | Customer ID
        String pageCursor = "pageCursor_example"; // String | Cursor to fetch next paginated items
        Integer pageSize = 20; // Integer | Max number of items to return in a page
        try {
            RoleList result = apiInstance.getRoles(customerId, pageCursor, pageSize);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling CustomerInfoApi#getRoles");
            e.printStackTrace();
        }
    }
}
```

## Documentation for API Endpoints

All URIs are relative to *https://api.bpcloud.siemens.com/accounts*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CustomerInfoApi* | [**getPartitions**](docs/CustomerInfoApi.md#getPartitions) | **GET** /customers/{customerId}/partitions | List Partitions for Customer
*CustomerInfoApi* | [**getRoles**](docs/CustomerInfoApi.md#getRoles) | **GET** /customers/{customerId}/roles | List Roles for Customer
*MeApi* | [**getMeUsergroups**](docs/MeApi.md#getMeUsergroups) | **GET** /me/usergroups | Get the usergroups of caller

## Documentation for Models

 - [Customer](docs/Customer.md)
 - [CustomerAttributes](docs/CustomerAttributes.md)
 - [CustomerList](docs/CustomerList.md)
 - [CustomerListLinks](docs/CustomerListLinks.md)
 - [CustomerMeta](docs/CustomerMeta.md)
 - [CustomerRelationship](docs/CustomerRelationship.md)
 - [CustomerRelationshipData](docs/CustomerRelationshipData.md)
 - [Error](docs/Error.md)
 - [ErrorErrors](docs/ErrorErrors.md)
 - [InlineResponse200](docs/InlineResponse200.md)
 - [MachineUser](docs/MachineUser.md)
 - [MachineUserMeta](docs/MachineUserMeta.md)
 - [MachineUserOAuth](docs/MachineUserOAuth.md)
 - [MachineUserRelationships](docs/MachineUserRelationships.md)
 - [MachineUserResponseAttributes](docs/MachineUserResponseAttributes.md)
 - [MachineUserState](docs/MachineUserState.md)
 - [MetaCompany](docs/MetaCompany.md)
 - [PagedUserGroupListResponse](docs/PagedUserGroupListResponse.md)
 - [PagedUserGroupListResponseLinks](docs/PagedUserGroupListResponseLinks.md)
 - [Partition](docs/Partition.md)
 - [PartitionAttributes](docs/PartitionAttributes.md)
 - [PartitionList](docs/PartitionList.md)
 - [PartitionListAttributes](docs/PartitionListAttributes.md)
 - [PartitionListIncluded](docs/PartitionListIncluded.md)
 - [PartitionListLinks](docs/PartitionListLinks.md)
 - [PartitionRelationship](docs/PartitionRelationship.md)
 - [PartitionRelationshipData](docs/PartitionRelationshipData.md)
 - [PartitionRelationships](docs/PartitionRelationships.md)
 - [Role](docs/Role.md)
 - [RoleAttributes](docs/RoleAttributes.md)
 - [RoleList](docs/RoleList.md)
 - [RoleListLinks](docs/RoleListLinks.md)
 - [RoleRelationship](docs/RoleRelationship.md)
 - [RoleRelationshipData](docs/RoleRelationshipData.md)
 - [User](docs/User.md)
 - [UserGroup](docs/UserGroup.md)
 - [UserGroupAttributes](docs/UserGroupAttributes.md)
 - [UserGroupList](docs/UserGroupList.md)
 - [UserGroupListLinks](docs/UserGroupListLinks.md)
 - [UserGroupListResponseData](docs/UserGroupListResponseData.md)
 - [UserGroupRelationship](docs/UserGroupRelationship.md)
 - [UserGroupRelationshipData](docs/UserGroupRelationshipData.md)
 - [UserGroupRelationships](docs/UserGroupRelationships.md)
 - [UserGroupResponseAttribute](docs/UserGroupResponseAttribute.md)
 - [UserGroupResponseData](docs/UserGroupResponseData.md)
 - [UserMembershipAttributes](docs/UserMembershipAttributes.md)
 - [UserRelationships](docs/UserRelationships.md)
 - [UserResponseAttributes](docs/UserResponseAttributes.md)
 - [UserResponseAttributesIdentity](docs/UserResponseAttributesIdentity.md)
 - [UserResponseAttributesProfile](docs/UserResponseAttributesProfile.md)

## Documentation for Authorization

Authentication schemes defined for the API:
### service_auth



## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author


