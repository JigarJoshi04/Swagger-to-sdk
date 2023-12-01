/*
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

package io.swagger.client.api;

import io.swagger.client.ApiException;
import io.swagger.client.model.Error;
import io.swagger.client.model.InlineResponse200;
import io.swagger.client.model.RoleList;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for CustomerInfoApi
 */
@Ignore
public class CustomerInfoApiTest {

    private final CustomerInfoApi api = new CustomerInfoApi();

    /**
     * List Partitions for Customer
     *
     * Get the partitions for the specified customer
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getPartitionsTest() throws ApiException {
        String customerId = null;
        String include = null;
        InlineResponse200 response = api.getPartitions(customerId, include);

        // TODO: test validations
    }
    /**
     * List Roles for Customer
     *
     * Get the roles available for specified customer ID
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getRolesTest() throws ApiException {
        String customerId = null;
        String pageCursor = null;
        Integer pageSize = null;
        RoleList response = api.getRoles(customerId, pageCursor, pageSize);

        // TODO: test validations
    }
}