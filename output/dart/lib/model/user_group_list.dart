part of swagger.api;

class UserGroupList {
  
  UserGroupListLinks links = null;

  List<UserGroup> data = [];

  UserGroupList();

  @override
  String toString() {
    return 'UserGroupList[links=$links, data=$data, ]';
  }

  UserGroupList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    links = new UserGroupListLinks.fromJson(json['links']);
    data = UserGroup.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'links': links,
      'data': data
     };
  }

  static List<UserGroupList> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserGroupList>() : json.map((value) => new UserGroupList.fromJson(value)).toList();
  }

  static Map<String, UserGroupList> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserGroupList>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserGroupList.fromJson(value));
    }
    return map;
  }
}
