part of swagger.api;

class User {
  /* type of the resource */
  String type = null;
/* ID of the user  */
  String id = null;

  UserResponseAttributes attributes = null;

  UserRelationships relationships = null;

  User();

  @override
  String toString() {
    return 'User[type=$type, id=$id, attributes=$attributes, relationships=$relationships, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    id = json['id'];
    attributes = new UserResponseAttributes.fromJson(json['attributes']);
    relationships = new UserRelationships.fromJson(json['relationships']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id,
      'attributes': attributes,
      'relationships': relationships
     };
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? new List<User>() : json.map((value) => new User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, User>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new User.fromJson(value));
    }
    return map;
  }
}
