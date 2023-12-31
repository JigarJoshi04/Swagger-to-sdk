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
import io.swagger.client.model.UserGroupList;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for MeApi
 */
@Ignore
public class MeApiTest {

    private final MeApi api = new MeApi();

    /**
     * Get the usergroups of caller
     *
     * Return list of the usergroup (user identity inferred from the SUB in the token) 
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void getMeUsergroupsTest() throws ApiException {
        String pageCursor = null;
        Integer pageSize = null;
        UserGroupList response = api.getMeUsergroups(pageCursor, pageSize);

        // TODO: test validations
    }
}
