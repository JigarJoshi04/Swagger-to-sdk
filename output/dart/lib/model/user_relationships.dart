part of swagger.api;

class UserRelationships {
  
  UserGroupRelationship belongsTo = null;

  UserRelationships();

  @override
  String toString() {
    return 'UserRelationships[belongsTo=$belongsTo, ]';
  }

  UserRelationships.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    belongsTo = new UserGroupRelationship.fromJson(json['belongsTo']);
  }

  Map<String, dynamic> toJson() {
    return {
      'belongsTo': belongsTo
     };
  }

  static List<UserRelationships> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserRelationships>() : json.map((value) => new UserRelationships.fromJson(value)).toList();
  }

  static Map<String, UserRelationships> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserRelationships>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserRelationships.fromJson(value));
    }
    return map;
  }
}
