/**
 * Accounts API
 * Accounts API 
 *
 * OpenAPI spec version: 0.9.5
 * 
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */
import { UserResponseAttributesIdentity } from './userResponseAttributesIdentity';
import { UserResponseAttributesProfile } from './userResponseAttributesProfile';

export interface UserResponseAttributes { 
    identity: UserResponseAttributesIdentity;
    profile: UserResponseAttributesProfile;
}