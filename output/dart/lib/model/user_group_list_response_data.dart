part of swagger.api;

class UserGroupListResponseData {
  
  UserGroupListResponseData();

  @override
  String toString() {
    return 'UserGroupListResponseData[]';
  }

  UserGroupListResponseData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<UserGroupListResponseData> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserGroupListResponseData>() : json.map((value) => new UserGroupListResponseData.fromJson(value)).toList();
  }

  static Map<String, UserGroupListResponseData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserGroupListResponseData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserGroupListResponseData.fromJson(value));
    }
    return map;
  }
}
