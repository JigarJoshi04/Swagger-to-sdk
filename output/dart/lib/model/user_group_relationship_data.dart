part of swagger.api;

class UserGroupRelationshipData {
  
  String type = null;

  String id = null;

  UserGroupRelationshipData();

  @override
  String toString() {
    return 'UserGroupRelationshipData[type=$type, id=$id, ]';
  }

  UserGroupRelationshipData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id
     };
  }

  static List<UserGroupRelationshipData> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserGroupRelationshipData>() : json.map((value) => new UserGroupRelationshipData.fromJson(value)).toList();
  }

  static Map<String, UserGroupRelationshipData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserGroupRelationshipData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserGroupRelationshipData.fromJson(value));
    }
    return map;
  }
}
