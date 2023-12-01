part of swagger.api;

class RoleAttributes {
  
  String technicalName = null;

  String displayName = null;

  List<String> permissions = [];

  RoleAttributes();

  @override
  String toString() {
    return 'RoleAttributes[technicalName=$technicalName, displayName=$displayName, permissions=$permissions, ]';
  }

  RoleAttributes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    technicalName = json['technicalName'];
    displayName = json['displayName'];
    permissions = (json['permissions'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'technicalName': technicalName,
      'displayName': displayName,
      'permissions': permissions
     };
  }

  static List<RoleAttributes> listFromJson(List<dynamic> json) {
    return json == null ? new List<RoleAttributes>() : json.map((value) => new RoleAttributes.fromJson(value)).toList();
  }

  static Map<String, RoleAttributes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RoleAttributes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RoleAttributes.fromJson(value));
    }
    return map;
  }
}
