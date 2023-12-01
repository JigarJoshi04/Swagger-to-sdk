/* 
 * Accounts API
 *
 * Accounts API 
 *
 * OpenAPI spec version: 0.9.5
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using RestSharp;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace IO.Swagger.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
        public interface ICustomerInfoApi : IApiAccessor
    {
        #region Synchronous Operations
        /// <summary>
        /// List Partitions for Customer
        /// </summary>
        /// <remarks>
        /// Get the partitions for the specified customer
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Customer ID</param>
        /// <param name="include">include related resources (optional)</param>
        /// <returns>InlineResponse200</returns>
        InlineResponse200 GetPartitions (string customerId, string include = null);

        /// <summary>
        /// List Partitions for Customer
        /// </summary>
        /// <remarks>
        /// Get the partitions for the specified customer
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Customer ID</param>
        /// <param name="include">include related resources (optional)</param>
        /// <returns>ApiResponse of InlineResponse200</returns>
        ApiResponse<InlineResponse200> GetPartitionsWithHttpInfo (string customerId, string include = null);
        /// <summary>
        /// List Roles for Customer
        /// </summary>
        /// <remarks>
        /// Get the roles available for specified customer ID
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Customer ID</param>
        /// <param name="pageCursor">Cursor to fetch next paginated items (optional)</param>
        /// <param name="pageSize">Max number of items to return in a page (optional, default to 20)</param>
        /// <returns>RoleList</returns>
        RoleList GetRoles (string customerId, string pageCursor = null, int? pageSize = null);

        /// <summary>
        /// List Roles for Customer
        /// </summary>
        /// <remarks>
        /// Get the roles available for specified customer ID
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Customer ID</param>
        /// <param name="pageCursor">Cursor to fetch next paginated items (optional)</param>
        /// <param name="pageSize">Max number of items to return in a page (optional, default to 20)</param>
        /// <returns>ApiResponse of RoleList</returns>
        ApiResponse<RoleList> GetRolesWithHttpInfo (string customerId, string pageCursor = null, int? pageSize = null);
        #endregion Synchronous Operations
        #region Asynchronous Operations
        /// <summary>
        /// List Partitions for Customer
        /// </summary>
        /// <remarks>
        /// Get the partitions for the specified customer
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Customer ID</param>
        /// <param name="include">include related resources (optional)</param>
        /// <returns>Task of InlineResponse200</returns>
        System.Threading.Tasks.Task<InlineResponse200> GetPartitionsAsync (string customerId, string include = null);

        /// <summary>
        /// List Partitions for Customer
        /// </summary>
        /// <remarks>
        /// Get the partitions for the specified customer
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Customer ID</param>
        /// <param name="include">include related resources (optional)</param>
        /// <returns>Task of ApiResponse (InlineResponse200)</returns>
        System.Threading.Tasks.Task<ApiResponse<InlineResponse200>> GetPartitionsAsyncWithHttpInfo (string customerId, string include = null);
        /// <summary>
        /// List Roles for Customer
        /// </summary>
        /// <remarks>
        /// Get the roles available for specified customer ID
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Customer ID</param>
        /// <param name="pageCursor">Cursor to fetch next paginated items (optional)</param>
        /// <param name="pageSize">Max number of items to return in a page (optional, default to 20)</param>
        /// <returns>Task of RoleList</returns>
        System.Threading.Tasks.Task<RoleList> GetRolesAsync (string customerId, string pageCursor = null, int? pageSize = null);

        /// <summary>
        /// List Roles for Customer
        /// </summary>
        /// <remarks>
        /// Get the roles available for specified customer ID
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Customer ID</param>
        /// <param name="pageCursor">Cursor to fetch next paginated items (optional)</param>
        /// <param name="pageSize">Max number of items to return in a page (optional, default to 20)</param>
        /// <returns>Task of ApiResponse (RoleList)</returns>
        System.Threading.Tasks.Task<ApiResponse<RoleList>> GetRolesAsyncWithHttpInfo (string customerId, string pageCursor = null, int? pageSize = null);
        #endregion Asynchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
        public partial class CustomerInfoApi : ICustomerInfoApi
    {
        private IO.Swagger.Client.ExceptionFactory _exceptionFactory = (name, response) => null;

        /// <summary>
        /// Initializes a new instance of the <see cref="CustomerInfoApi"/> class.
        /// </summary>
        /// <returns></returns>
        public CustomerInfoApi(String basePath)
        {
            this.Configuration = new IO.Swagger.Client.Configuration { BasePath = basePath };

            ExceptionFactory = IO.Swagger.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="CustomerInfoApi"/> class
        /// </summary>
        /// <returns></returns>
        public CustomerInfoApi()
        {
            this.Configuration = IO.Swagger.Client.Configuration.Default;

            ExceptionFactory = IO.Swagger.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="CustomerInfoApi"/> class
        /// using Configuration object
        /// </summary>
        /// <param name="configuration">An instance of Configuration</param>
        /// <returns></returns>
        public CustomerInfoApi(IO.Swagger.Client.Configuration configuration = null)
        {
            if (configuration == null) // use the default one in Configuration
                this.Configuration = IO.Swagger.Client.Configuration.Default;
            else
                this.Configuration = configuration;

            ExceptionFactory = IO.Swagger.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        public String GetBasePath()
        {
            return this.Configuration.ApiClient.RestClient.BaseUrl.ToString();
        }

        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <value>The base path</value>
        [Obsolete("SetBasePath is deprecated, please do 'Configuration.ApiClient = new ApiClient(\"http://new-path\")' instead.")]
        public void SetBasePath(String basePath)
        {
            // do nothing
        }

        /// <summary>
        /// Gets or sets the configuration object
        /// </summary>
        /// <value>An instance of the Configuration</value>
        public IO.Swagger.Client.Configuration Configuration {get; set;}

        /// <summary>
        /// Provides a factory method hook for the creation of exceptions.
        /// </summary>
        public IO.Swagger.Client.ExceptionFactory ExceptionFactory
        {
            get
            {
                if (_exceptionFactory != null && _exceptionFactory.GetInvocationList().Length > 1)
                {
                    throw new InvalidOperationException("Multicast delegate for ExceptionFactory is unsupported.");
                }
                return _exceptionFactory;
            }
            set { _exceptionFactory = value; }
        }

        /// <summary>
        /// Gets the default header.
        /// </summary>
        /// <returns>Dictionary of HTTP header</returns>
        [Obsolete("DefaultHeader is deprecated, please use Configuration.DefaultHeader instead.")]
        public IDictionary<String, String> DefaultHeader()
        {
            return new ReadOnlyDictionary<string, string>(this.Configuration.DefaultHeader);
        }

        /// <summary>
        /// Add default header.
        /// </summary>
        /// <param name="key">Header field name.</param>
        /// <param name="value">Header field value.</param>
        /// <returns></returns>
        [Obsolete("AddDefaultHeader is deprecated, please use Configuration.AddDefaultHeader instead.")]
        public void AddDefaultHeader(string key, string value)
        {
            this.Configuration.AddDefaultHeader(key, value);
        }

        /// <summary>
        /// List Partitions for Customer Get the partitions for the specified customer
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Customer ID</param>
        /// <param name="include">include related resources (optional)</param>
        /// <returns>InlineResponse200</returns>
        public InlineResponse200 GetPartitions (string customerId, string include = null)
        {
             ApiResponse<InlineResponse200> localVarResponse = GetPartitionsWithHttpInfo(customerId, include);
             return localVarResponse.Data;
        }

        /// <summary>
        /// List Partitions for Customer Get the partitions for the specified customer
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Customer ID</param>
        /// <param name="include">include related resources (optional)</param>
        /// <returns>ApiResponse of InlineResponse200</returns>
        public ApiResponse< InlineResponse200 > GetPartitionsWithHttpInfo (string customerId, string include = null)
        {
            // verify the required parameter 'customerId' is set
            if (customerId == null)
                throw new ApiException(400, "Missing required parameter 'customerId' when calling CustomerInfoApi->GetPartitions");

            var localVarPath = "/customers/{customerId}/partitions";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/vnd.api+json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (customerId != null) localVarPathParams.Add("customerId", this.Configuration.ApiClient.ParameterToString(customerId)); // path parameter
            if (include != null) localVarQueryParams.AddRange(this.Configuration.ApiClient.ParameterToKeyValuePairs("", "include", include)); // query parameter
            // authentication (service_auth) required
            // bearer required
            if (!String.IsNullOrEmpty(this.Configuration.AccessToken))
            {
                localVarHeaderParams["Authorization"] = "Bearer " + this.Configuration.AccessToken;
            }

            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) this.Configuration.ApiClient.CallApi(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("GetPartitions", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<InlineResponse200>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (InlineResponse200) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(InlineResponse200)));
        }

        /// <summary>
        /// List Partitions for Customer Get the partitions for the specified customer
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Customer ID</param>
        /// <param name="include">include related resources (optional)</param>
        /// <returns>Task of InlineResponse200</returns>
        public async System.Threading.Tasks.Task<InlineResponse200> GetPartitionsAsync (string customerId, string include = null)
        {
             ApiResponse<InlineResponse200> localVarResponse = await GetPartitionsAsyncWithHttpInfo(customerId, include);
             return localVarResponse.Data;

        }

        /// <summary>
        /// List Partitions for Customer Get the partitions for the specified customer
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Customer ID</param>
        /// <param name="include">include related resources (optional)</param>
        /// <returns>Task of ApiResponse (InlineResponse200)</returns>
        public async System.Threading.Tasks.Task<ApiResponse<InlineResponse200>> GetPartitionsAsyncWithHttpInfo (string customerId, string include = null)
        {
            // verify the required parameter 'customerId' is set
            if (customerId == null)
                throw new ApiException(400, "Missing required parameter 'customerId' when calling CustomerInfoApi->GetPartitions");

            var localVarPath = "/customers/{customerId}/partitions";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/vnd.api+json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (customerId != null) localVarPathParams.Add("customerId", this.Configuration.ApiClient.ParameterToString(customerId)); // path parameter
            if (include != null) localVarQueryParams.AddRange(this.Configuration.ApiClient.ParameterToKeyValuePairs("", "include", include)); // query parameter
            // authentication (service_auth) required
            // bearer required
            if (!String.IsNullOrEmpty(this.Configuration.AccessToken))
            {
                localVarHeaderParams["Authorization"] = "Bearer " + this.Configuration.AccessToken;
            }

            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) await this.Configuration.ApiClient.CallApiAsync(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("GetPartitions", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<InlineResponse200>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (InlineResponse200) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(InlineResponse200)));
        }

        /// <summary>
        /// List Roles for Customer Get the roles available for specified customer ID
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Customer ID</param>
        /// <param name="pageCursor">Cursor to fetch next paginated items (optional)</param>
        /// <param name="pageSize">Max number of items to return in a page (optional, default to 20)</param>
        /// <returns>RoleList</returns>
        public RoleList GetRoles (string customerId, string pageCursor = null, int? pageSize = null)
        {
             ApiResponse<RoleList> localVarResponse = GetRolesWithHttpInfo(customerId, pageCursor, pageSize);
             return localVarResponse.Data;
        }

        /// <summary>
        /// List Roles for Customer Get the roles available for specified customer ID
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Customer ID</param>
        /// <param name="pageCursor">Cursor to fetch next paginated items (optional)</param>
        /// <param name="pageSize">Max number of items to return in a page (optional, default to 20)</param>
        /// <returns>ApiResponse of RoleList</returns>
        public ApiResponse< RoleList > GetRolesWithHttpInfo (string customerId, string pageCursor = null, int? pageSize = null)
        {
            // verify the required parameter 'customerId' is set
            if (customerId == null)
                throw new ApiException(400, "Missing required parameter 'customerId' when calling CustomerInfoApi->GetRoles");

            var localVarPath = "/customers/{customerId}/roles";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/vnd.api+json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (customerId != null) localVarPathParams.Add("customerId", this.Configuration.ApiClient.ParameterToString(customerId)); // path parameter
            if (pageCursor != null) localVarQueryParams.AddRange(this.Configuration.ApiClient.ParameterToKeyValuePairs("", "page[cursor]", pageCursor)); // query parameter
            if (pageSize != null) localVarQueryParams.AddRange(this.Configuration.ApiClient.ParameterToKeyValuePairs("", "page[size]", pageSize)); // query parameter
            // authentication (service_auth) required
            // bearer required
            if (!String.IsNullOrEmpty(this.Configuration.AccessToken))
            {
                localVarHeaderParams["Authorization"] = "Bearer " + this.Configuration.AccessToken;
            }

            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) this.Configuration.ApiClient.CallApi(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("GetRoles", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<RoleList>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (RoleList) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(RoleList)));
        }

        /// <summary>
        /// List Roles for Customer Get the roles available for specified customer ID
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Customer ID</param>
        /// <param name="pageCursor">Cursor to fetch next paginated items (optional)</param>
        /// <param name="pageSize">Max number of items to return in a page (optional, default to 20)</param>
        /// <returns>Task of RoleList</returns>
        public async System.Threading.Tasks.Task<RoleList> GetRolesAsync (string customerId, string pageCursor = null, int? pageSize = null)
        {
             ApiResponse<RoleList> localVarResponse = await GetRolesAsyncWithHttpInfo(customerId, pageCursor, pageSize);
             return localVarResponse.Data;

        }

        /// <summary>
        /// List Roles for Customer Get the roles available for specified customer ID
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="customerId">Customer ID</param>
        /// <param name="pageCursor">Cursor to fetch next paginated items (optional)</param>
        /// <param name="pageSize">Max number of items to return in a page (optional, default to 20)</param>
        /// <returns>Task of ApiResponse (RoleList)</returns>
        public async System.Threading.Tasks.Task<ApiResponse<RoleList>> GetRolesAsyncWithHttpInfo (string customerId, string pageCursor = null, int? pageSize = null)
        {
            // verify the required parameter 'customerId' is set
            if (customerId == null)
                throw new ApiException(400, "Missing required parameter 'customerId' when calling CustomerInfoApi->GetRoles");

            var localVarPath = "/customers/{customerId}/roles";
            var localVarPathParams = new Dictionary<String, String>();
            var localVarQueryParams = new List<KeyValuePair<String, String>>();
            var localVarHeaderParams = new Dictionary<String, String>(this.Configuration.DefaultHeader);
            var localVarFormParams = new Dictionary<String, String>();
            var localVarFileParams = new Dictionary<String, FileParameter>();
            Object localVarPostBody = null;

            // to determine the Content-Type header
            String[] localVarHttpContentTypes = new String[] {
            };
            String localVarHttpContentType = this.Configuration.ApiClient.SelectHeaderContentType(localVarHttpContentTypes);

            // to determine the Accept header
            String[] localVarHttpHeaderAccepts = new String[] {
                "application/vnd.api+json"
            };
            String localVarHttpHeaderAccept = this.Configuration.ApiClient.SelectHeaderAccept(localVarHttpHeaderAccepts);
            if (localVarHttpHeaderAccept != null)
                localVarHeaderParams.Add("Accept", localVarHttpHeaderAccept);

            if (customerId != null) localVarPathParams.Add("customerId", this.Configuration.ApiClient.ParameterToString(customerId)); // path parameter
            if (pageCursor != null) localVarQueryParams.AddRange(this.Configuration.ApiClient.ParameterToKeyValuePairs("", "page[cursor]", pageCursor)); // query parameter
            if (pageSize != null) localVarQueryParams.AddRange(this.Configuration.ApiClient.ParameterToKeyValuePairs("", "page[size]", pageSize)); // query parameter
            // authentication (service_auth) required
            // bearer required
            if (!String.IsNullOrEmpty(this.Configuration.AccessToken))
            {
                localVarHeaderParams["Authorization"] = "Bearer " + this.Configuration.AccessToken;
            }

            // make the HTTP request
            IRestResponse localVarResponse = (IRestResponse) await this.Configuration.ApiClient.CallApiAsync(localVarPath,
                Method.GET, localVarQueryParams, localVarPostBody, localVarHeaderParams, localVarFormParams, localVarFileParams,
                localVarPathParams, localVarHttpContentType);

            int localVarStatusCode = (int) localVarResponse.StatusCode;

            if (ExceptionFactory != null)
            {
                Exception exception = ExceptionFactory("GetRoles", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<RoleList>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (RoleList) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(RoleList)));
        }

    }
}
