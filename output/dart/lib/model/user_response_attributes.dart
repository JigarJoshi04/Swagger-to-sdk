part of swagger.api;

class UserResponseAttributes {
  
  UserResponseAttributesIdentity identity = null;

  UserResponseAttributesProfile profile = null;

  UserResponseAttributes();

  @override
  String toString() {
    return 'UserResponseAttributes[identity=$identity, profile=$profile, ]';
  }

  UserResponseAttributes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    identity = new UserResponseAttributesIdentity.fromJson(json['identity']);
    profile = new UserResponseAttributesProfile.fromJson(json['profile']);
  }

  Map<String, dynamic> toJson() {
    return {
      'identity': identity,
      'profile': profile
     };
  }

  static List<UserResponseAttributes> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserResponseAttributes>() : json.map((value) => new UserResponseAttributes.fromJson(value)).toList();
  }

  static Map<String, UserResponseAttributes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserResponseAttributes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserResponseAttributes.fromJson(value));
    }
    return map;
  }
}
