part of swagger.api;

class UserGroupResponseAttribute {
  /* Name of the user group  */
  String name = null;
/* Description of the user group  */
  String description = null;

  bool isMachineEnabled = null;

  bool isSystemDefined = null;

  UserGroupResponseAttribute();

  @override
  String toString() {
    return 'UserGroupResponseAttribute[name=$name, description=$description, isMachineEnabled=$isMachineEnabled, isSystemDefined=$isSystemDefined, ]';
  }

  UserGroupResponseAttribute.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    description = json['description'];
    isMachineEnabled = json['isMachineEnabled'];
    isSystemDefined = json['isSystemDefined'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'isMachineEnabled': isMachineEnabled,
      'isSystemDefined': isSystemDefined
     };
  }

  static List<UserGroupResponseAttribute> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserGroupResponseAttribute>() : json.map((value) => new UserGroupResponseAttribute.fromJson(value)).toList();
  }

  static Map<String, UserGroupResponseAttribute> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserGroupResponseAttribute>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserGroupResponseAttribute.fromJson(value));
    }
    return map;
  }
}
