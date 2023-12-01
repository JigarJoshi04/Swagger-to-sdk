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

import io.swagger.client.ApiCallback;
import io.swagger.client.ApiClient;
import io.swagger.client.ApiException;
import io.swagger.client.ApiResponse;
import io.swagger.client.Configuration;
import io.swagger.client.Pair;
import io.swagger.client.ProgressRequestBody;
import io.swagger.client.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;


import io.swagger.client.model.Error;
import io.swagger.client.model.InlineResponse200;
import io.swagger.client.model.RoleList;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerInfoApi {
    private ApiClient apiClient;

    public CustomerInfoApi() {
        this(Configuration.getDefaultApiClient());
    }

    public CustomerInfoApi(ApiClient apiClient) {
        this.apiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return apiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.apiClient = apiClient;
    }

    /**
     * Build call for getPartitions
     * @param customerId Customer ID (required)
     * @param include include related resources (optional)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call getPartitionsCall(String customerId, String include, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = null;
        
        // create path and map variables
        String localVarPath = "/customers/{customerId}/partitions"
            .replaceAll("\\{" + "customerId" + "\\}", apiClient.escapeString(customerId.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        if (include != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("include", include));

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/vnd.api+json"
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] { "service_auth" };
        return apiClient.buildCall(localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }
    
    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call getPartitionsValidateBeforeCall(String customerId, String include, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        // verify the required parameter 'customerId' is set
        if (customerId == null) {
            throw new ApiException("Missing the required parameter 'customerId' when calling getPartitions(Async)");
        }
        
        com.squareup.okhttp.Call call = getPartitionsCall(customerId, include, progressListener, progressRequestListener);
        return call;

        
        
        
        
    }

    /**
     * List Partitions for Customer
     * Get the partitions for the specified customer
     * @param customerId Customer ID (required)
     * @param include include related resources (optional)
     * @return InlineResponse200
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public InlineResponse200 getPartitions(String customerId, String include) throws ApiException {
        ApiResponse<InlineResponse200> resp = getPartitionsWithHttpInfo(customerId, include);
        return resp.getData();
    }

    /**
     * List Partitions for Customer
     * Get the partitions for the specified customer
     * @param customerId Customer ID (required)
     * @param include include related resources (optional)
     * @return ApiResponse&lt;InlineResponse200&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<InlineResponse200> getPartitionsWithHttpInfo(String customerId, String include) throws ApiException {
        com.squareup.okhttp.Call call = getPartitionsValidateBeforeCall(customerId, include, null, null);
        Type localVarReturnType = new TypeToken<InlineResponse200>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     * List Partitions for Customer (asynchronously)
     * Get the partitions for the specified customer
     * @param customerId Customer ID (required)
     * @param include include related resources (optional)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call getPartitionsAsync(String customerId, String include, final ApiCallback<InlineResponse200> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = getPartitionsValidateBeforeCall(customerId, include, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<InlineResponse200>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
    /**
     * Build call for getRoles
     * @param customerId Customer ID (required)
     * @param pageCursor Cursor to fetch next paginated items (optional)
     * @param pageSize Max number of items to return in a page (optional, default to 20)
     * @param progressListener Progress listener
     * @param progressRequestListener Progress request listener
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     */
    public com.squareup.okhttp.Call getRolesCall(String customerId, String pageCursor, Integer pageSize, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        Object localVarPostBody = null;
        
        // create path and map variables
        String localVarPath = "/customers/{customerId}/roles"
            .replaceAll("\\{" + "customerId" + "\\}", apiClient.escapeString(customerId.toString()));

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        if (pageCursor != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("page[cursor]", pageCursor));
        if (pageSize != null)
        localVarQueryParams.addAll(apiClient.parameterToPair("page[size]", pageSize));

        Map<String, String> localVarHeaderParams = new HashMap<String, String>();

        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        final String[] localVarAccepts = {
            "application/vnd.api+json"
        };
        final String localVarAccept = apiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) localVarHeaderParams.put("Accept", localVarAccept);

        final String[] localVarContentTypes = {
            
        };
        final String localVarContentType = apiClient.selectHeaderContentType(localVarContentTypes);
        localVarHeaderParams.put("Content-Type", localVarContentType);

        if(progressListener != null) {
            apiClient.getHttpClient().networkInterceptors().add(new com.squareup.okhttp.Interceptor() {
                @Override
                public com.squareup.okhttp.Response intercept(com.squareup.okhttp.Interceptor.Chain chain) throws IOException {
                    com.squareup.okhttp.Response originalResponse = chain.proceed(chain.request());
                    return originalResponse.newBuilder()
                    .body(new ProgressResponseBody(originalResponse.body(), progressListener))
                    .build();
                }
            });
        }

        String[] localVarAuthNames = new String[] { "service_auth" };
        return apiClient.buildCall(localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarAuthNames, progressRequestListener);
    }
    
    @SuppressWarnings("rawtypes")
    private com.squareup.okhttp.Call getRolesValidateBeforeCall(String customerId, String pageCursor, Integer pageSize, final ProgressResponseBody.ProgressListener progressListener, final ProgressRequestBody.ProgressRequestListener progressRequestListener) throws ApiException {
        // verify the required parameter 'customerId' is set
        if (customerId == null) {
            throw new ApiException("Missing the required parameter 'customerId' when calling getRoles(Async)");
        }
        
        com.squareup.okhttp.Call call = getRolesCall(customerId, pageCursor, pageSize, progressListener, progressRequestListener);
        return call;

        
        
        
        
    }

    /**
     * List Roles for Customer
     * Get the roles available for specified customer ID
     * @param customerId Customer ID (required)
     * @param pageCursor Cursor to fetch next paginated items (optional)
     * @param pageSize Max number of items to return in a page (optional, default to 20)
     * @return RoleList
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public RoleList getRoles(String customerId, String pageCursor, Integer pageSize) throws ApiException {
        ApiResponse<RoleList> resp = getRolesWithHttpInfo(customerId, pageCursor, pageSize);
        return resp.getData();
    }

    /**
     * List Roles for Customer
     * Get the roles available for specified customer ID
     * @param customerId Customer ID (required)
     * @param pageCursor Cursor to fetch next paginated items (optional)
     * @param pageSize Max number of items to return in a page (optional, default to 20)
     * @return ApiResponse&lt;RoleList&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     */
    public ApiResponse<RoleList> getRolesWithHttpInfo(String customerId, String pageCursor, Integer pageSize) throws ApiException {
        com.squareup.okhttp.Call call = getRolesValidateBeforeCall(customerId, pageCursor, pageSize, null, null);
        Type localVarReturnType = new TypeToken<RoleList>(){}.getType();
        return apiClient.execute(call, localVarReturnType);
    }

    /**
     * List Roles for Customer (asynchronously)
     * Get the roles available for specified customer ID
     * @param customerId Customer ID (required)
     * @param pageCursor Cursor to fetch next paginated items (optional)
     * @param pageSize Max number of items to return in a page (optional, default to 20)
     * @param callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     */
    public com.squareup.okhttp.Call getRolesAsync(String customerId, String pageCursor, Integer pageSize, final ApiCallback<RoleList> callback) throws ApiException {

        ProgressResponseBody.ProgressListener progressListener = null;
        ProgressRequestBody.ProgressRequestListener progressRequestListener = null;

        if (callback != null) {
            progressListener = new ProgressResponseBody.ProgressListener() {
                @Override
                public void update(long bytesRead, long contentLength, boolean done) {
                    callback.onDownloadProgress(bytesRead, contentLength, done);
                }
            };

            progressRequestListener = new ProgressRequestBody.ProgressRequestListener() {
                @Override
                public void onRequestProgress(long bytesWritten, long contentLength, boolean done) {
                    callback.onUploadProgress(bytesWritten, contentLength, done);
                }
            };
        }

        com.squareup.okhttp.Call call = getRolesValidateBeforeCall(customerId, pageCursor, pageSize, progressListener, progressRequestListener);
        Type localVarReturnType = new TypeToken<RoleList>(){}.getType();
        apiClient.executeAsync(call, localVarReturnType, callback);
        return call;
    }
}