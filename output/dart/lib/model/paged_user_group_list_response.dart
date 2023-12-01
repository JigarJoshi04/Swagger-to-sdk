part of swagger.api;

class PagedUserGroupListResponse {
  
  UserGroupListResponseData data = null;

  PagedUserGroupListResponseLinks links = null;

  PagedUserGroupListResponse();

  @override
  String toString() {
    return 'PagedUserGroupListResponse[data=$data, links=$links, ]';
  }

  PagedUserGroupListResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new UserGroupListResponseData.fromJson(json['data']);
    links = new PagedUserGroupListResponseLinks.fromJson(json['links']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'links': links
     };
  }

  static List<PagedUserGroupListResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedUserGroupListResponse>() : json.map((value) => new PagedUserGroupListResponse.fromJson(value)).toList();
  }

  static Map<String, PagedUserGroupListResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedUserGroupListResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedUserGroupListResponse.fromJson(value));
    }
    return map;
  }
}
