/// <reference path="./custom.d.ts" />
// tslint:disable
/**
 * Accounts API
 * Accounts API 
 *
 * OpenAPI spec version: 0.9.5
 * 
 *
 * NOTE: This file is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the file manually.
 */

import * as url from "url";
import * as isomorphicFetch from "isomorphic-fetch";
import { Configuration } from "./configuration";

const BASE_PATH = "https://api.bpcloud.siemens.com/accounts".replace(/\/+$/, "");

/**
 *
 * @export
 */
export const COLLECTION_FORMATS = {
    csv: ",",
    ssv: " ",
    tsv: "\t",
    pipes: "|",
};

/**
 *
 * @export
 * @interface FetchAPI
 */
export interface FetchAPI {
    (url: string, init?: any): Promise<Response>;
}

/**
 *
 * @export
 * @interface FetchArgs
 */
export interface FetchArgs {
    url: string;
    options: any;
}

/**
 *
 * @export
 * @class BaseAPI
 */
export class BaseAPI {
    protected configuration: Configuration;

    constructor(configuration?: Configuration, protected basePath: string = BASE_PATH, protected fetch: FetchAPI = isomorphicFetch) {
        if (configuration) {
            this.configuration = configuration;
            this.basePath = configuration.basePath || this.basePath;
        }
    }
};

/**
 *
 * @export
 * @class RequiredError
 * @extends {Error}
 */
export class RequiredError extends Error {
    name: "RequiredError"
    constructor(public field: string, msg?: string) {
        super(msg);
    }
}

/**
 * 
 * @export
 * @interface Customer
 */
export interface Customer {
    /**
     * 
     * @type {string}
     * @memberof Customer
     */
    type: Customer.TypeEnum;
    /**
     * 
     * @type {string}
     * @memberof Customer
     */
    id: string;
    /**
     * 
     * @type {CustomerAttributes}
     * @memberof Customer
     */
    attributes: CustomerAttributes;
    /**
     * 
     * @type {CustomerMeta}
     * @memberof Customer
     */
    meta?: CustomerMeta;
}

/**
 * @export
 * @namespace Customer
 */
export namespace Customer {
    /**
     * @export
     * @enum {string}
     */
    export enum TypeEnum {
        Customer = <any> 'Customer'
    }
}
/**
 * 
 * @export
 * @interface CustomerAttributes
 */
export interface CustomerAttributes {
    /**
     * 
     * @type {string}
     * @memberof CustomerAttributes
     */
    name: string;
    /**
     * 
     * @type {UserMembershipAttributes}
     * @memberof CustomerAttributes
     */
    customerMembershipState?: UserMembershipAttributes;
}
/**
 * 
 * @export
 * @interface CustomerList
 */
export interface CustomerList {
    /**
     * 
     * @type {CustomerListLinks}
     * @memberof CustomerList
     */
    links: CustomerListLinks;
    /**
     * 
     * @type {Array<Customer>}
     * @memberof CustomerList
     */
    data: Array<Customer>;
}
/**
 * 
 * @export
 * @interface CustomerListLinks
 */
export interface CustomerListLinks {
    /**
     * 
     * @type {string}
     * @memberof CustomerListLinks
     */
    self: string;
    /**
     * 
     * @type {string}
     * @memberof CustomerListLinks
     */
    next?: string;
}
/**
 * 
 * @export
 * @interface CustomerMeta
 */
export interface CustomerMeta {
    /**
     * 
     * @type {Date}
     * @memberof CustomerMeta
     */
    updatedAt?: Date;
    /**
     * 
     * @type {string}
     * @memberof CustomerMeta
     */
    updatedBy?: string;
}
/**
 * 
 * @export
 * @interface CustomerRelationship
 */
export interface CustomerRelationship {
    /**
     * 
     * @type {CustomerRelationshipData}
     * @memberof CustomerRelationship
     */
    data: CustomerRelationshipData;
}
/**
 * 
 * @export
 * @interface CustomerRelationshipData
 */
export interface CustomerRelationshipData {
    /**
     * 
     * @type {string}
     * @memberof CustomerRelationshipData
     */
    type: CustomerRelationshipData.TypeEnum;
    /**
     * 
     * @type {string}
     * @memberof CustomerRelationshipData
     */
    id: string;
}

/**
 * @export
 * @namespace CustomerRelationshipData
 */
export namespace CustomerRelationshipData {
    /**
     * @export
     * @enum {string}
     */
    export enum TypeEnum {
        Customer = <any> 'Customer'
    }
}
/**
 * 
 * @export
 * @interface ErrorErrors
 */
export interface ErrorErrors {
    /**
     * A unique identifier for this particular occurrence of the problem.
     * @type {string}
     * @memberof ErrorErrors
     */
    id: string;
    /**
     * An application-specific error code, expressed as a string value.
     * @type {string}
     * @memberof ErrorErrors
     */
    code?: string;
    /**
     * The HTTP status code applicable to this problem, expressed as a string value.
     * @type {string}
     * @memberof ErrorErrors
     */
    status: string;
    /**
     * A short, human-readable summary of the problem that SHOULD NOT change from occurrence to occurrence of the problem, except for purposes of localization.
     * @type {string}
     * @memberof ErrorErrors
     */
    title: string;
    /**
     * a human-readable explanation specific to this occurrence of the problem. Like title, this field’s value can be localized.
     * @type {string}
     * @memberof ErrorErrors
     */
    detail?: string;
}
/**
 * 
 * @export
 * @interface InlineResponse200
 */
export interface InlineResponse200 {
    /**
     * 
     * @type {PartitionList}
     * @memberof InlineResponse200
     */
    data?: PartitionList;
}
/**
 * 
 * @export
 * @interface MachineUser
 */
export interface MachineUser {
    /**
     * 
     * @type {string}
     * @memberof MachineUser
     */
    type: MachineUser.TypeEnum;
    /**
     * ID of the Machine User 
     * @type {string}
     * @memberof MachineUser
     */
    id: string;
    /**
     * 
     * @type {MachineUserResponseAttributes}
     * @memberof MachineUser
     */
    attributes?: MachineUserResponseAttributes;
    /**
     * 
     * @type {MachineUserRelationships}
     * @memberof MachineUser
     */
    relationships?: MachineUserRelationships;
    /**
     * 
     * @type {MachineUserMeta}
     * @memberof MachineUser
     */
    meta?: MachineUserMeta;
}

/**
 * @export
 * @namespace MachineUser
 */
export namespace MachineUser {
    /**
     * @export
     * @enum {string}
     */
    export enum TypeEnum {
        MachineUser = <any> 'MachineUser'
    }
}
/**
 * 
 * @export
 * @interface MachineUserMeta
 */
export interface MachineUserMeta {
    /**
     * 
     * @type {Date}
     * @memberof MachineUserMeta
     */
    createdAt: Date;
    /**
     * 
     * @type {Date}
     * @memberof MachineUserMeta
     */
    updatedAt?: Date;
    /**
     * 
     * @type {string}
     * @memberof MachineUserMeta
     */
    createdBy?: string;
    /**
     * 
     * @type {string}
     * @memberof MachineUserMeta
     */
    updatedBy?: string;
}
/**
 * 
 * @export
 * @interface MachineUserOAuth
 */
export interface MachineUserOAuth {
    /**
     * ID of client
     * @type {string}
     * @memberof MachineUserOAuth
     */
    clientId: string;
    /**
     * issuer of oAuth
     * @type {string}
     * @memberof MachineUserOAuth
     */
    issuer: string;
    /**
     * Audience
     * @type {string}
     * @memberof MachineUserOAuth
     */
    audience: string;
    /**
     * Time of secret creation
     * @type {string}
     * @memberof MachineUserOAuth
     */
    secretCreated: string;
    /**
     * time of secret rotation
     * @type {string}
     * @memberof MachineUserOAuth
     */
    secretRotated: string;
}
/**
 * 
 * @export
 * @interface MachineUserRelationships
 */
export interface MachineUserRelationships {
    /**
     * 
     * @type {CustomerRelationship}
     * @memberof MachineUserRelationships
     */
    ownedBy?: CustomerRelationship;
}
/**
 * 
 * @export
 * @interface MachineUserResponseAttributes
 */
export interface MachineUserResponseAttributes {
    /**
     * Name of Machine User
     * @type {string}
     * @memberof MachineUserResponseAttributes
     */
    name: string;
    /**
     * Purpose of this machine user
     * @type {string}
     * @memberof MachineUserResponseAttributes
     */
    purpose: string;
    /**
     * 
     * @type {MachineUserState}
     * @memberof MachineUserResponseAttributes
     */
    state: MachineUserState;
    /**
     * 
     * @type {MachineUserOAuth}
     * @memberof MachineUserResponseAttributes
     */
    oAuth: MachineUserOAuth;
}
/**
 * 
 * @export
 * @interface MachineUserState
 */
export interface MachineUserState {
    /**
     * Status of Machine User
     * @type {string}
     * @memberof MachineUserState
     */
    current: string;
    /**
     * Status since time
     * @type {string}
     * @memberof MachineUserState
     */
    since: string;
    /**
     * was set to this status by(ID)
     * @type {string}
     * @memberof MachineUserState
     */
    actionBy: string;
}
/**
 * 
 * @export
 * @interface MetaCompany
 */
export interface MetaCompany {
    /**
     * 
     * @type {string}
     * @memberof MetaCompany
     */
    name: string;
}
/**
 * [More error information](docs/api-errors.html) 
 * @export
 * @interface ModelError
 */
export interface ModelError {
    /**
     * 
     * @type {Array<ErrorErrors>}
     * @memberof ModelError
     */
    errors: Array<ErrorErrors>;
}
/**
 * 
 * @export
 * @interface PagedUserGroupListResponse
 */
export interface PagedUserGroupListResponse {
    /**
     * 
     * @type {UserGroupListResponseData}
     * @memberof PagedUserGroupListResponse
     */
    data: UserGroupListResponseData;
    /**
     * 
     * @type {PagedUserGroupListResponseLinks}
     * @memberof PagedUserGroupListResponse
     */
    links: PagedUserGroupListResponseLinks;
}
/**
 * 
 * @export
 * @interface PagedUserGroupListResponseLinks
 */
export interface PagedUserGroupListResponseLinks {
    /**
     * 
     * @type {string}
     * @memberof PagedUserGroupListResponseLinks
     */
    self?: string;
    /**
     * 
     * @type {string}
     * @memberof PagedUserGroupListResponseLinks
     */
    next?: string;
}
/**
 * 
 * @export
 * @interface Partition
 */
export interface Partition {
    /**
     * 
     * @type {string}
     * @memberof Partition
     */
    type: string;
    /**
     * 
     * @type {string}
     * @memberof Partition
     */
    id: string;
    /**
     * 
     * @type {PartitionAttributes}
     * @memberof Partition
     */
    attributes: PartitionAttributes;
    /**
     * 
     * @type {PartitionRelationships}
     * @memberof Partition
     */
    relationships?: PartitionRelationships;
}
/**
 * 
 * @export
 * @interface PartitionAttributes
 */
export interface PartitionAttributes {
    /**
     * 
     * @type {string}
     * @memberof PartitionAttributes
     */
    name: string;
    /**
     * 
     * @type {string}
     * @memberof PartitionAttributes
     */
    description?: string;
}
/**
 * 
 * @export
 * @interface PartitionList
 */
export interface PartitionList {
    /**
     * 
     * @type {PartitionListLinks}
     * @memberof PartitionList
     */
    links: PartitionListLinks;
    /**
     * 
     * @type {Array<Partition>}
     * @memberof PartitionList
     */
    data: Array<Partition>;
    /**
     * Included resources based in `include` query param
     * @type {Array<PartitionListIncluded>}
     * @memberof PartitionList
     */
    included?: Array<PartitionListIncluded>;
}
/**
 * 
 * @export
 * @interface PartitionListAttributes
 */
export interface PartitionListAttributes {
    /**
     * 
     * @type {string}
     * @memberof PartitionListAttributes
     */
    name: string;
}
/**
 * 
 * @export
 * @interface PartitionListIncluded
 */
export interface PartitionListIncluded {
    /**
     * 
     * @type {string}
     * @memberof PartitionListIncluded
     */
    type: string;
    /**
     * ID
     * @type {string}
     * @memberof PartitionListIncluded
     */
    id: string;
    /**
     * 
     * @type {PartitionListAttributes}
     * @memberof PartitionListIncluded
     */
    attributes: PartitionListAttributes;
}
/**
 * 
 * @export
 * @interface PartitionListLinks
 */
export interface PartitionListLinks {
    /**
     * 
     * @type {string}
     * @memberof PartitionListLinks
     */
    self: string;
    /**
     * 
     * @type {string}
     * @memberof PartitionListLinks
     */
    next?: string;
}
/**
 * 
 * @export
 * @interface PartitionRelationship
 */
export interface PartitionRelationship {
    /**
     * 
     * @type {Array<PartitionRelationshipData>}
     * @memberof PartitionRelationship
     */
    data: Array<PartitionRelationshipData>;
}
/**
 * 
 * @export
 * @interface PartitionRelationshipData
 */
export interface PartitionRelationshipData {
    /**
     * 
     * @type {string}
     * @memberof PartitionRelationshipData
     */
    type: PartitionRelationshipData.TypeEnum;
    /**
     * 
     * @type {string}
     * @memberof PartitionRelationshipData
     */
    id: string;
}

/**
 * @export
 * @namespace PartitionRelationshipData
 */
export namespace PartitionRelationshipData {
    /**
     * @export
     * @enum {string}
     */
    export enum TypeEnum {
        Partition = <any> 'Partition'
    }
}
/**
 * 
 * @export
 * @interface PartitionRelationships
 */
export interface PartitionRelationships {
    /**
     * 
     * @type {CustomerRelationship}
     * @memberof PartitionRelationships
     */
    ownedByCustomer: CustomerRelationship;
}
/**
 * 
 * @export
 * @interface Role
 */
export interface Role {
    /**
     * 
     * @type {string}
     * @memberof Role
     */
    type: string;
    /**
     * 
     * @type {string}
     * @memberof Role
     */
    id: string;
    /**
     * 
     * @type {RoleAttributes}
     * @memberof Role
     */
    attributes?: RoleAttributes;
}
/**
 * 
 * @export
 * @interface RoleAttributes
 */
export interface RoleAttributes {
    /**
     * 
     * @type {string}
     * @memberof RoleAttributes
     */
    technicalName: string;
    /**
     * 
     * @type {string}
     * @memberof RoleAttributes
     */
    displayName: string;
    /**
     * 
     * @type {Array<string>}
     * @memberof RoleAttributes
     */
    permissions: Array<string>;
}
/**
 * 
 * @export
 * @interface RoleList
 */
export interface RoleList {
    /**
     * 
     * @type {RoleListLinks}
     * @memberof RoleList
     */
    links: RoleListLinks;
    /**
     * 
     * @type {Array<Role>}
     * @memberof RoleList
     */
    data: Array<Role>;
}
/**
 * 
 * @export
 * @interface RoleListLinks
 */
export interface RoleListLinks {
    /**
     * 
     * @type {string}
     * @memberof RoleListLinks
     */
    self: string;
    /**
     * 
     * @type {string}
     * @memberof RoleListLinks
     */
    next?: string;
}
/**
 * 
 * @export
 * @interface RoleRelationship
 */
export interface RoleRelationship {
    /**
     * 
     * @type {Array<RoleRelationshipData>}
     * @memberof RoleRelationship
     */
    data: Array<RoleRelationshipData>;
}
/**
 * 
 * @export
 * @interface RoleRelationshipData
 */
export interface RoleRelationshipData {
    /**
     * 
     * @type {string}
     * @memberof RoleRelationshipData
     */
    type: RoleRelationshipData.TypeEnum;
    /**
     * 
     * @type {string}
     * @memberof RoleRelationshipData
     */
    id: string;
}

/**
 * @export
 * @namespace RoleRelationshipData
 */
export namespace RoleRelationshipData {
    /**
     * @export
     * @enum {string}
     */
    export enum TypeEnum {
        Role = <any> 'Role'
    }
}
/**
 * 
 * @export
 * @interface User
 */
export interface User {
    /**
     * type of the resource
     * @type {string}
     * @memberof User
     */
    type: string;
    /**
     * ID of the user 
     * @type {string}
     * @memberof User
     */
    id: string;
    /**
     * 
     * @type {UserResponseAttributes}
     * @memberof User
     */
    attributes?: UserResponseAttributes;
    /**
     * 
     * @type {UserRelationships}
     * @memberof User
     */
    relationships?: UserRelationships;
}
/**
 * 
 * @export
 * @interface UserGroup
 */
export interface UserGroup {
    /**
     * 
     * @type {string}
     * @memberof UserGroup
     */
    type: string;
    /**
     * 
     * @type {string}
     * @memberof UserGroup
     */
    id: string;
    /**
     * 
     * @type {UserGroupAttributes}
     * @memberof UserGroup
     */
    attributes: UserGroupAttributes;
    /**
     * 
     * @type {UserGroupRelationships}
     * @memberof UserGroup
     */
    relationships?: UserGroupRelationships;
}
/**
 * 
 * @export
 * @interface UserGroupAttributes
 */
export interface UserGroupAttributes {
    /**
     * Name of the user group 
     * @type {string}
     * @memberof UserGroupAttributes
     */
    name: string;
    /**
     * Description of the user group 
     * @type {string}
     * @memberof UserGroupAttributes
     */
    description: string;
    /**
     * 
     * @type {boolean}
     * @memberof UserGroupAttributes
     */
    isMachineEnabled?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof UserGroupAttributes
     */
    isSystemDefined?: boolean;
}
/**
 * 
 * @export
 * @interface UserGroupList
 */
export interface UserGroupList {
    /**
     * 
     * @type {UserGroupListLinks}
     * @memberof UserGroupList
     */
    links: UserGroupListLinks;
    /**
     * 
     * @type {Array<UserGroup>}
     * @memberof UserGroupList
     */
    data: Array<UserGroup>;
}
/**
 * 
 * @export
 * @interface UserGroupListLinks
 */
export interface UserGroupListLinks {
    /**
     * 
     * @type {string}
     * @memberof UserGroupListLinks
     */
    self: string;
    /**
     * 
     * @type {string}
     * @memberof UserGroupListLinks
     */
    next?: string;
}
/**
 * 
 * @export
 */
export type UserGroupListResponseData = Array<UserGroupResponseData>
/**
 * 
 * @export
 * @interface UserGroupRelationship
 */
export interface UserGroupRelationship {
    /**
     * 
     * @type {Array<UserGroupRelationshipData>}
     * @memberof UserGroupRelationship
     */
    data: Array<UserGroupRelationshipData>;
}
/**
 * 
 * @export
 * @interface UserGroupRelationshipData
 */
export interface UserGroupRelationshipData {
    /**
     * 
     * @type {string}
     * @memberof UserGroupRelationshipData
     */
    type: string;
    /**
     * 
     * @type {string}
     * @memberof UserGroupRelationshipData
     */
    id: string;
}
/**
 * 
 * @export
 * @interface UserGroupRelationships
 */
export interface UserGroupRelationships {
    /**
     * 
     * @type {PartitionRelationship}
     * @memberof UserGroupRelationships
     */
    hasAccessTo?: PartitionRelationship;
    /**
     * 
     * @type {RoleRelationship}
     * @memberof UserGroupRelationships
     */
    authorizedAs?: RoleRelationship;
    /**
     * 
     * @type {CustomerRelationship}
     * @memberof UserGroupRelationships
     */
    ownedBy?: CustomerRelationship;
}
/**
 * 
 * @export
 * @interface UserGroupResponseAttribute
 */
export interface UserGroupResponseAttribute {
    /**
     * Name of the user group 
     * @type {string}
     * @memberof UserGroupResponseAttribute
     */
    name: string;
    /**
     * Description of the user group 
     * @type {string}
     * @memberof UserGroupResponseAttribute
     */
    description: string;
    /**
     * 
     * @type {boolean}
     * @memberof UserGroupResponseAttribute
     */
    isMachineEnabled?: boolean;
    /**
     * 
     * @type {boolean}
     * @memberof UserGroupResponseAttribute
     */
    isSystemDefined?: boolean;
}
/**
 * 
 * @export
 * @interface UserGroupResponseData
 */
export interface UserGroupResponseData {
    /**
     * 
     * @type {string}
     * @memberof UserGroupResponseData
     */
    type: string;
    /**
     * 
     * @type {string}
     * @memberof UserGroupResponseData
     */
    id: string;
    /**
     * 
     * @type {UserGroupResponseAttribute}
     * @memberof UserGroupResponseData
     */
    attributes: UserGroupResponseAttribute;
    /**
     * 
     * @type {UserGroupRelationships}
     * @memberof UserGroupResponseData
     */
    relationships?: UserGroupRelationships;
}
/**
 * additional details user by certain products
 * @export
 * @interface UserMembershipAttributes
 */
export interface UserMembershipAttributes {
    /**
     * State of the membership
     * @type {string}
     * @memberof UserMembershipAttributes
     */
    state: UserMembershipAttributes.StateEnum;
}

/**
 * @export
 * @namespace UserMembershipAttributes
 */
export namespace UserMembershipAttributes {
    /**
     * @export
     * @enum {string}
     */
    export enum StateEnum {
        Active = <any> 'active',
        Suspended = <any> 'suspended'
    }
}
/**
 * 
 * @export
 * @interface UserRelationships
 */
export interface UserRelationships {
    /**
     * 
     * @type {UserGroupRelationship}
     * @memberof UserRelationships
     */
    belongsTo?: UserGroupRelationship;
}
/**
 * 
 * @export
 * @interface UserResponseAttributes
 */
export interface UserResponseAttributes {
    /**
     * 
     * @type {UserResponseAttributesIdentity}
     * @memberof UserResponseAttributes
     */
    identity: UserResponseAttributesIdentity;
    /**
     * 
     * @type {UserResponseAttributesProfile}
     * @memberof UserResponseAttributes
     */
    profile: UserResponseAttributesProfile;
}
/**
 * user identity details
 * @export
 * @interface UserResponseAttributesIdentity
 */
export interface UserResponseAttributesIdentity {
    /**
     * email address of the user
     * @type {string}
     * @memberof UserResponseAttributesIdentity
     */
    emailId: string;
    /**
     * horizon ID of the user within Siemens ID
     * @type {string}
     * @memberof UserResponseAttributesIdentity
     */
    externalId: string;
    /**
     * user's family name
     * @type {string}
     * @memberof UserResponseAttributesIdentity
     */
    familyName?: string;
    /**
     * user's full name
     * @type {string}
     * @memberof UserResponseAttributesIdentity
     */
    fullName?: string;
    /**
     * user's given name
     * @type {string}
     * @memberof UserResponseAttributesIdentity
     */
    givenName: string;
}
/**
 * 
 * @export
 * @interface UserResponseAttributesProfile
 */
export interface UserResponseAttributesProfile {
    /**
     * free text user info
     * @type {string}
     * @memberof UserResponseAttributesProfile
     */
    freeText?: string;
    /**
     * user's job description
     * @type {string}
     * @memberof UserResponseAttributesProfile
     */
    jobDescription?: string;
    /**
     * user's contact phone number
     * @type {string}
     * @memberof UserResponseAttributesProfile
     */
    phone?: string;
    /**
     * user's profile image
     * @type {string}
     * @memberof UserResponseAttributesProfile
     */
    profileImage?: string;
}
/**
 * CustomerInfoApi - fetch parameter creator
 * @export
 */
export const CustomerInfoApiFetchParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Get the partitions for the specified customer
         * @summary List Partitions for Customer
         * @param {string} customerId Customer ID
         * @param {string} [include] include related resources
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getPartitions(customerId: string, include?: string, options: any = {}): FetchArgs {
            // verify required parameter 'customerId' is not null or undefined
            if (customerId === null || customerId === undefined) {
                throw new RequiredError('customerId','Required parameter customerId was null or undefined when calling getPartitions.');
            }
            const localVarPath = `/customers/{customerId}/partitions`
                .replace(`{${"customerId"}}`, encodeURIComponent(String(customerId)));
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication service_auth required

            if (include !== undefined) {
                localVarQueryParameter['include'] = include;
            }

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * CustomerInfoApi - functional programming interface
 * @export
 */
export const CustomerInfoApiFp = function(configuration?: Configuration) {
    return {
        /**
         * Get the partitions for the specified customer
         * @summary List Partitions for Customer
         * @param {string} customerId Customer ID
         * @param {string} [include] include related resources
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getPartitions(customerId: string, include?: string, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<InlineResponse200> {
            const localVarFetchArgs = CustomerInfoApiFetchParamCreator(configuration).getPartitions(customerId, include, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
    }
};

/**
 * CustomerInfoApi - factory interface
 * @export
 */
export const CustomerInfoApiFactory = function (configuration?: Configuration, fetch?: FetchAPI, basePath?: string) {
    return {
        /**
         * Get the partitions for the specified customer
         * @summary List Partitions for Customer
         * @param {string} customerId Customer ID
         * @param {string} [include] include related resources
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getPartitions(customerId: string, include?: string, options?: any) {
            return CustomerInfoApiFp(configuration).getPartitions(customerId, include, options)(fetch, basePath);
        },
    };
};

/**
 * CustomerInfoApi - object-oriented interface
 * @export
 * @class CustomerInfoApi
 * @extends {BaseAPI}
 */
export class CustomerInfoApi extends BaseAPI {
    /**
     * Get the partitions for the specified customer
     * @summary List Partitions for Customer
     * @param {string} customerId Customer ID
     * @param {string} [include] include related resources
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof CustomerInfoApi
     */
    public getPartitions(customerId: string, include?: string, options?: any) {
        return CustomerInfoApiFp(this.configuration).getPartitions(customerId, include, options)(this.fetch, this.basePath);
    }

}
/**
 * MeApi - fetch parameter creator
 * @export
 */
export const MeApiFetchParamCreator = function (configuration?: Configuration) {
    return {
        /**
         * Return list of the usergroup (user identity inferred from the SUB in the token) 
         * @summary Get the usergroups of caller
         * @param {string} [pageCursor] Cursor to fetch next paginated items
         * @param {number} [pageSize] Max number of items to return in a page
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getMeUsergroups(pageCursor?: string, pageSize?: number, options: any = {}): FetchArgs {
            const localVarPath = `/me/usergroups`;
            const localVarUrlObj = url.parse(localVarPath, true);
            const localVarRequestOptions = Object.assign({ method: 'GET' }, options);
            const localVarHeaderParameter = {} as any;
            const localVarQueryParameter = {} as any;

            // authentication service_auth required

            if (pageCursor !== undefined) {
                localVarQueryParameter['page[cursor]'] = pageCursor;
            }

            if (pageSize !== undefined) {
                localVarQueryParameter['page[size]'] = pageSize;
            }

            localVarUrlObj.query = Object.assign({}, localVarUrlObj.query, localVarQueryParameter, options.query);
            // fix override query string Detail: https://stackoverflow.com/a/7517673/1077943
            delete localVarUrlObj.search;
            localVarRequestOptions.headers = Object.assign({}, localVarHeaderParameter, options.headers);

            return {
                url: url.format(localVarUrlObj),
                options: localVarRequestOptions,
            };
        },
    }
};

/**
 * MeApi - functional programming interface
 * @export
 */
export const MeApiFp = function(configuration?: Configuration) {
    return {
        /**
         * Return list of the usergroup (user identity inferred from the SUB in the token) 
         * @summary Get the usergroups of caller
         * @param {string} [pageCursor] Cursor to fetch next paginated items
         * @param {number} [pageSize] Max number of items to return in a page
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getMeUsergroups(pageCursor?: string, pageSize?: number, options?: any): (fetch?: FetchAPI, basePath?: string) => Promise<UserGroupList> {
            const localVarFetchArgs = MeApiFetchParamCreator(configuration).getMeUsergroups(pageCursor, pageSize, options);
            return (fetch: FetchAPI = isomorphicFetch, basePath: string = BASE_PATH) => {
                return fetch(basePath + localVarFetchArgs.url, localVarFetchArgs.options).then((response) => {
                    if (response.status >= 200 && response.status < 300) {
                        return response.json();
                    } else {
                        throw response;
                    }
                });
            };
        },
    }
};

/**
 * MeApi - factory interface
 * @export
 */
export const MeApiFactory = function (configuration?: Configuration, fetch?: FetchAPI, basePath?: string) {
    return {
        /**
         * Return list of the usergroup (user identity inferred from the SUB in the token) 
         * @summary Get the usergroups of caller
         * @param {string} [pageCursor] Cursor to fetch next paginated items
         * @param {number} [pageSize] Max number of items to return in a page
         * @param {*} [options] Override http request option.
         * @throws {RequiredError}
         */
        getMeUsergroups(pageCursor?: string, pageSize?: number, options?: any) {
            return MeApiFp(configuration).getMeUsergroups(pageCursor, pageSize, options)(fetch, basePath);
        },
    };
};

/**
 * MeApi - object-oriented interface
 * @export
 * @class MeApi
 * @extends {BaseAPI}
 */
export class MeApi extends BaseAPI {
    /**
     * Return list of the usergroup (user identity inferred from the SUB in the token) 
     * @summary Get the usergroups of caller
     * @param {string} [pageCursor] Cursor to fetch next paginated items
     * @param {number} [pageSize] Max number of items to return in a page
     * @param {*} [options] Override http request option.
     * @throws {RequiredError}
     * @memberof MeApi
     */
    public getMeUsergroups(pageCursor?: string, pageSize?: number, options?: any) {
        return MeApiFp(this.configuration).getMeUsergroups(pageCursor, pageSize, options)(this.fetch, this.basePath);
    }

}
