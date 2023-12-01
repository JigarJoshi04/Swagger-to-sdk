part of swagger.api;

class RoleList {
  
  RoleListLinks links = null;

  List<Role> data = [];

  RoleList();

  @override
  String toString() {
    return 'RoleList[links=$links, data=$data, ]';
  }

  RoleList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    links = new RoleListLinks.fromJson(json['links']);
    data = Role.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'links': links,
      'data': data
     };
  }

  static List<RoleList> listFromJson(List<dynamic> json) {
    return json == null ? new List<RoleList>() : json.map((value) => new RoleList.fromJson(value)).toList();
  }

  static Map<String, RoleList> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RoleList>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RoleList.fromJson(value));
    }
    return map;
  }
}
