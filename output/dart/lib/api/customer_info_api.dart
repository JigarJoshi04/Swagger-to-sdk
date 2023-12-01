part of swagger.api;



class CustomerInfoApi {
  final ApiClient apiClient;

  CustomerInfoApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// List Partitions for Customer
  ///
  /// Get the partitions for the specified customer
  Future<InlineResponse200> getPartitions(String customerId, { String include }) async {
    Object postBody = null;

    // verify required params are set
    if(customerId == null) {
     throw new ApiException(400, "Missing required param: customerId");
    }

    // create path and map variables
    String path = "/customers/{customerId}/partitions".replaceAll("{format}","json").replaceAll("{" + "customerId" + "}", customerId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(include != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "include", include));
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
          apiClient.deserialize(response.body, 'InlineResponse200') as InlineResponse200 ;
    } else {
      return null;
    }
  }
}
