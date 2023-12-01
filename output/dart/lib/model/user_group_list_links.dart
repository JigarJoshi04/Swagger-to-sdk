part of swagger.api;

class UserGroupListLinks {
  
  String self = null;

  String next = null;

  UserGroupListLinks();

  @override
  String toString() {
    return 'UserGroupListLinks[self=$self, next=$next, ]';
  }

  UserGroupListLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = json['self'];
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'next': next
     };
  }

  static List<UserGroupListLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserGroupListLinks>() : json.map((value) => new UserGroupListLinks.fromJson(value)).toList();
  }

  static Map<String, UserGroupListLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserGroupListLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserGroupListLinks.fromJson(value));
    }
    return map;
  }
}
