part of swagger.api;

class UserGroup {
  
  String type = null;

  String id = null;

  UserGroupAttributes attributes = null;

  UserGroupRelationships relationships = null;

  UserGroup();

  @override
  String toString() {
    return 'UserGroup[type=$type, id=$id, attributes=$attributes, relationships=$relationships, ]';
  }

  UserGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    id = json['id'];
    attributes = new UserGroupAttributes.fromJson(json['attributes']);
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

  static List<UserGroup> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserGroup>() : json.map((value) => new UserGroup.fromJson(value)).toList();
  }

  static Map<String, UserGroup> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserGroup>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserGroup.fromJson(value));
    }
    return map;
  }
}
