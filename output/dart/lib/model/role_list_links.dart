part of swagger.api;

class RoleListLinks {
  
  String self = null;

  String next = null;

  RoleListLinks();

  @override
  String toString() {
    return 'RoleListLinks[self=$self, next=$next, ]';
  }

  RoleListLinks.fromJson(Map<String, dynamic> json) {
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

  static List<RoleListLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<RoleListLinks>() : json.map((value) => new RoleListLinks.fromJson(value)).toList();
  }

  static Map<String, RoleListLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RoleListLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RoleListLinks.fromJson(value));
    }
    return map;
  }
}
