part of swagger.api;

class UserGroupAttributes {
  /* Name of the user group  */
  String name = null;
/* Description of the user group  */
  String description = null;

  bool isMachineEnabled = null;

  bool isSystemDefined = null;

  UserGroupAttributes();

  @override
  String toString() {
    return 'UserGroupAttributes[name=$name, description=$description, isMachineEnabled=$isMachineEnabled, isSystemDefined=$isSystemDefined, ]';
  }

  UserGroupAttributes.fromJson(Map<String, dynamic> json) {
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

  static List<UserGroupAttributes> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserGroupAttributes>() : json.map((value) => new UserGroupAttributes.fromJson(value)).toList();
  }

  static Map<String, UserGroupAttributes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserGroupAttributes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserGroupAttributes.fromJson(value));
    }
    return map;
  }
}
