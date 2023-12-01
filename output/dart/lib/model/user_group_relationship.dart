part of swagger.api;

class UserGroupRelationship {
  
  List<UserGroupRelationshipData> data = [];

  UserGroupRelationship();

  @override
  String toString() {
    return 'UserGroupRelationship[data=$data, ]';
  }

  UserGroupRelationship.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = UserGroupRelationshipData.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data
     };
  }

  static List<UserGroupRelationship> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserGroupRelationship>() : json.map((value) => new UserGroupRelationship.fromJson(value)).toList();
  }

  static Map<String, UserGroupRelationship> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserGroupRelationship>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserGroupRelationship.fromJson(value));
    }
    return map;
  }
}
