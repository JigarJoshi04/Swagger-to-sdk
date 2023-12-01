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
package io.swagger.client.apis

import io.swagger.client.models.Error
import io.swagger.client.models.UserGroupList

import io.swagger.client.infrastructure.*

class MeApi(basePath: kotlin.String = "https://api.bpcloud.siemens.com/accounts") : ApiClient(basePath) {

    /**
     * Get the usergroups of caller
     * Return list of the usergroup (user identity inferred from the SUB in the token) 
     * @param page[cursor] Cursor to fetch next paginated items (optional)
     * @param page[size] Max number of items to return in a page (optional, default to 20)
     * @return UserGroupList
     */
    @Suppress("UNCHECKED_CAST")
    fun getMeUsergroups(page[cursor]: kotlin.String? = null, page[size]: kotlin.Int? = null): UserGroupList {
        val localVariableQuery: MultiValueMap = mapOf("page[cursor]" to listOf("$page[cursor]"), "page[size]" to listOf("$page[size]"))
        val localVariableConfig = RequestConfig(
                RequestMethod.GET,
                "/me/usergroups", query = localVariableQuery
        )
        val response = request<UserGroupList>(
                localVariableConfig
        )

        return when (response.responseType) {
            ResponseType.Success -> (response as Success<*>).data as UserGroupList
            ResponseType.Informational -> TODO()
            ResponseType.Redirection -> TODO()
            ResponseType.ClientError -> throw ClientException((response as ClientError<*>).body as? String ?: "Client error")
            ResponseType.ServerError -> throw ServerException((response as ServerError<*>).message ?: "Server error")
        }
    }
}