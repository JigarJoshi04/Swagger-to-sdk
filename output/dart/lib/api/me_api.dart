part of swagger.api;



class MeApi {
  final ApiClient apiClient;

  MeApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get the usergroups of caller
  ///
  /// Return list of the usergroup (user identity inferred from the SUB in the token) 
  Future<UserGroupList> getMeUsergroups({ String page[cursor], int page[size] }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/me/usergroups".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page[cursor] != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page[cursor]", page[cursor]));
    }
    if(page[size] != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page[size]", page[size]));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["service_auth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'UserGroupList') as UserGroupList ;
    } else {
      return null;
    }
  }
}
