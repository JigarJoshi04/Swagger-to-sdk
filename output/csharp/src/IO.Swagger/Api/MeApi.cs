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
        public interface IMeApi : IApiAccessor
    {
        #region Synchronous Operations
        /// <summary>
        /// Get the usergroups of caller
        /// </summary>
        /// <remarks>
        /// Return list of the usergroup (user identity inferred from the SUB in the token) 
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="pageCursor">Cursor to fetch next paginated items (optional)</param>
        /// <param name="pageSize">Max number of items to return in a page (optional, default to 20)</param>
        /// <returns>UserGroupList</returns>
        UserGroupList GetMeUsergroups (string pageCursor = null, int? pageSize = null);

        /// <summary>
        /// Get the usergroups of caller
        /// </summary>
        /// <remarks>
        /// Return list of the usergroup (user identity inferred from the SUB in the token) 
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="pageCursor">Cursor to fetch next paginated items (optional)</param>
        /// <param name="pageSize">Max number of items to return in a page (optional, default to 20)</param>
        /// <returns>ApiResponse of UserGroupList</returns>
        ApiResponse<UserGroupList> GetMeUsergroupsWithHttpInfo (string pageCursor = null, int? pageSize = null);
        #endregion Synchronous Operations
        #region Asynchronous Operations
        /// <summary>
        /// Get the usergroups of caller
        /// </summary>
        /// <remarks>
        /// Return list of the usergroup (user identity inferred from the SUB in the token) 
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="pageCursor">Cursor to fetch next paginated items (optional)</param>
        /// <param name="pageSize">Max number of items to return in a page (optional, default to 20)</param>
        /// <returns>Task of UserGroupList</returns>
        System.Threading.Tasks.Task<UserGroupList> GetMeUsergroupsAsync (string pageCursor = null, int? pageSize = null);

        /// <summary>
        /// Get the usergroups of caller
        /// </summary>
        /// <remarks>
        /// Return list of the usergroup (user identity inferred from the SUB in the token) 
        /// </remarks>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="pageCursor">Cursor to fetch next paginated items (optional)</param>
        /// <param name="pageSize">Max number of items to return in a page (optional, default to 20)</param>
        /// <returns>Task of ApiResponse (UserGroupList)</returns>
        System.Threading.Tasks.Task<ApiResponse<UserGroupList>> GetMeUsergroupsAsyncWithHttpInfo (string pageCursor = null, int? pageSize = null);
        #endregion Asynchronous Operations
    }

    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
        public partial class MeApi : IMeApi
    {
        private IO.Swagger.Client.ExceptionFactory _exceptionFactory = (name, response) => null;

        /// <summary>
        /// Initializes a new instance of the <see cref="MeApi"/> class.
        /// </summary>
        /// <returns></returns>
        public MeApi(String basePath)
        {
            this.Configuration = new IO.Swagger.Client.Configuration { BasePath = basePath };

            ExceptionFactory = IO.Swagger.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="MeApi"/> class
        /// </summary>
        /// <returns></returns>
        public MeApi()
        {
            this.Configuration = IO.Swagger.Client.Configuration.Default;

            ExceptionFactory = IO.Swagger.Client.Configuration.DefaultExceptionFactory;
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="MeApi"/> class
        /// using Configuration object
        /// </summary>
        /// <param name="configuration">An instance of Configuration</param>
        /// <returns></returns>
        public MeApi(IO.Swagger.Client.Configuration configuration = null)
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
        /// Get the usergroups of caller Return list of the usergroup (user identity inferred from the SUB in the token) 
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="pageCursor">Cursor to fetch next paginated items (optional)</param>
        /// <param name="pageSize">Max number of items to return in a page (optional, default to 20)</param>
        /// <returns>UserGroupList</returns>
        public UserGroupList GetMeUsergroups (string pageCursor = null, int? pageSize = null)
        {
             ApiResponse<UserGroupList> localVarResponse = GetMeUsergroupsWithHttpInfo(pageCursor, pageSize);
             return localVarResponse.Data;
        }

        /// <summary>
        /// Get the usergroups of caller Return list of the usergroup (user identity inferred from the SUB in the token) 
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="pageCursor">Cursor to fetch next paginated items (optional)</param>
        /// <param name="pageSize">Max number of items to return in a page (optional, default to 20)</param>
        /// <returns>ApiResponse of UserGroupList</returns>
        public ApiResponse< UserGroupList > GetMeUsergroupsWithHttpInfo (string pageCursor = null, int? pageSize = null)
        {

            var localVarPath = "/me/usergroups";
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
                Exception exception = ExceptionFactory("GetMeUsergroups", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<UserGroupList>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (UserGroupList) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(UserGroupList)));
        }

        /// <summary>
        /// Get the usergroups of caller Return list of the usergroup (user identity inferred from the SUB in the token) 
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="pageCursor">Cursor to fetch next paginated items (optional)</param>
        /// <param name="pageSize">Max number of items to return in a page (optional, default to 20)</param>
        /// <returns>Task of UserGroupList</returns>
        public async System.Threading.Tasks.Task<UserGroupList> GetMeUsergroupsAsync (string pageCursor = null, int? pageSize = null)
        {
             ApiResponse<UserGroupList> localVarResponse = await GetMeUsergroupsAsyncWithHttpInfo(pageCursor, pageSize);
             return localVarResponse.Data;

        }

        /// <summary>
        /// Get the usergroups of caller Return list of the usergroup (user identity inferred from the SUB in the token) 
        /// </summary>
        /// <exception cref="IO.Swagger.Client.ApiException">Thrown when fails to make API call</exception>
        /// <param name="pageCursor">Cursor to fetch next paginated items (optional)</param>
        /// <param name="pageSize">Max number of items to return in a page (optional, default to 20)</param>
        /// <returns>Task of ApiResponse (UserGroupList)</returns>
        public async System.Threading.Tasks.Task<ApiResponse<UserGroupList>> GetMeUsergroupsAsyncWithHttpInfo (string pageCursor = null, int? pageSize = null)
        {

            var localVarPath = "/me/usergroups";
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
                Exception exception = ExceptionFactory("GetMeUsergroups", localVarResponse);
                if (exception != null) throw exception;
            }

            return new ApiResponse<UserGroupList>(localVarStatusCode,
                localVarResponse.Headers.ToDictionary(x => x.Name, x => string.Join(",", x.Value)),
                (UserGroupList) this.Configuration.ApiClient.Deserialize(localVarResponse, typeof(UserGroupList)));
        }

    }
}