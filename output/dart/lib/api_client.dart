part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://api.bpcloud.siemens.com/accounts"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'Customer':
          return new Customer.fromJson(value);
        case 'CustomerAttributes':
          return new CustomerAttributes.fromJson(value);
        case 'CustomerList':
          return new CustomerList.fromJson(value);
        case 'CustomerListLinks':
          return new CustomerListLinks.fromJson(value);
        case 'CustomerMeta':
          return new CustomerMeta.fromJson(value);
        case 'CustomerRelationship':
          return new CustomerRelationship.fromJson(value);
        case 'CustomerRelationshipData':
          return new CustomerRelationshipData.fromJson(value);
        case 'Error':
          return new Error.fromJson(value);
        case 'ErrorErrors':
          return new ErrorErrors.fromJson(value);
        case 'InlineResponse200':
          return new InlineResponse200.fromJson(value);
        case 'MachineUser':
          return new MachineUser.fromJson(value);
        case 'MachineUserMeta':
          return new MachineUserMeta.fromJson(value);
        case 'MachineUserOAuth':
          return new MachineUserOAuth.fromJson(value);
        case 'MachineUserRelationships':
          return new MachineUserRelationships.fromJson(value);
        case 'MachineUserResponseAttributes':
          return new MachineUserResponseAttributes.fromJson(value);
        case 'MachineUserState':
          return new MachineUserState.fromJson(value);
        case 'MetaCompany':
          return new MetaCompany.fromJson(value);
        case 'PagedUserGroupListResponse':
          return new PagedUserGroupListResponse.fromJson(value);
        case 'PagedUserGroupListResponseLinks':
          return new PagedUserGroupListResponseLinks.fromJson(value);
        case 'Partition':
          return new Partition.fromJson(value);
        case 'PartitionAttributes':
          return new PartitionAttributes.fromJson(value);
        case 'PartitionList':
          return new PartitionList.fromJson(value);
        case 'PartitionListAttributes':
          return new PartitionListAttributes.fromJson(value);
        case 'PartitionListIncluded':
          return new PartitionListIncluded.fromJson(value);
        case 'PartitionListLinks':
          return new PartitionListLinks.fromJson(value);
        case 'PartitionRelationship':
          return new PartitionRelationship.fromJson(value);
        case 'PartitionRelationshipData':
          return new PartitionRelationshipData.fromJson(value);
        case 'PartitionRelationships':
          return new PartitionRelationships.fromJson(value);
        case 'Role':
          return new Role.fromJson(value);
        case 'RoleAttributes':
          return new RoleAttributes.fromJson(value);
        case 'RoleList':
          return new RoleList.fromJson(value);
        case 'RoleListLinks':
          return new RoleListLinks.fromJson(value);
        case 'RoleRelationship':
          return new RoleRelationship.fromJson(value);
        case 'RoleRelationshipData':
          return new RoleRelationshipData.fromJson(value);
        case 'User':
          return new User.fromJson(value);
        case 'UserGroup':
          return new UserGroup.fromJson(value);
        case 'UserGroupAttributes':
          return new UserGroupAttributes.fromJson(value);
        case 'UserGroupList':
          return new UserGroupList.fromJson(value);
        case 'UserGroupListLinks':
          return new UserGroupListLinks.fromJson(value);
        case 'UserGroupListResponseData':
          return new UserGroupListResponseData.fromJson(value);
        case 'UserGroupRelationship':
          return new UserGroupRelationship.fromJson(value);
        case 'UserGroupRelationshipData':
          return new UserGroupRelationshipData.fromJson(value);
        case 'UserGroupRelationships':
          return new UserGroupRelationships.fromJson(value);
        case 'UserGroupResponseAttribute':
          return new UserGroupResponseAttribute.fromJson(value);
        case 'UserGroupResponseData':
          return new UserGroupResponseData.fromJson(value);
        case 'UserMembershipAttributes':
          return new UserMembershipAttributes.fromJson(value);
        case 'UserRelationships':
          return new UserRelationships.fromJson(value);
        case 'UserResponseAttributes':
          return new UserResponseAttributes.fromJson(value);
        case 'UserResponseAttributesIdentity':
          return new UserResponseAttributesIdentity.fromJson(value);
        case 'UserResponseAttributesProfile':
          return new UserResponseAttributesProfile.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
