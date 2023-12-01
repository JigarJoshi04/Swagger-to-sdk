part of swagger.api;

class UserGroupResponseData {
  
  String type = null;

  String id = null;

  UserGroupResponseAttribute attributes = null;

  UserGroupRelationships relationships = null;

  UserGroupResponseData();

  @override
  String toString() {
    return 'UserGroupResponseData[type=$type, id=$id, attributes=$attributes, relationships=$relationships, ]';
  }

  UserGroupResponseData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    id = json['id'];
    attributes = new UserGroupResponseAttribute.fromJson(json['attributes']);
    relationships = new UserGroupRelationships.fromJson(json['relationships']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id,
      'attributes': attributes,
      'relationships': relationships
     };
  }

  static List<UserGroupResponseData> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserGroupResponseData>() : json.map((value) => new UserGroupResponseData.fromJson(value)).toList();
  }

  static Map<String, UserGroupResponseData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserGroupResponseData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserGroupResponseData.fromJson(value));
    }
    return map;
  }
}
