part of swagger.api;

class Role {
  
  String type = null;

  String id = null;

  RoleAttributes attributes = null;

  Role();

  @override
  String toString() {
    return 'Role[type=$type, id=$id, attributes=$attributes, ]';
  }

  Role.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    id = json['id'];
    attributes = new RoleAttributes.fromJson(json['attributes']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id,
      'attributes': attributes
     };
  }

  static List<Role> listFromJson(List<dynamic> json) {
    return json == null ? new List<Role>() : json.map((value) => new Role.fromJson(value)).toList();
  }

  static Map<String, Role> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Role>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Role.fromJson(value));
    }
    return map;
  }
}
