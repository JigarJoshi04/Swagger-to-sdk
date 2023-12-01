part of swagger.api;

class RoleRelationship {
  
  List<RoleRelationshipData> data = [];

  RoleRelationship();

  @override
  String toString() {
    return 'RoleRelationship[data=$data, ]';
  }

  RoleRelationship.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = RoleRelationshipData.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data
     };
  }

  static List<RoleRelationship> listFromJson(List<dynamic> json) {
    return json == null ? new List<RoleRelationship>() : json.map((value) => new RoleRelationship.fromJson(value)).toList();
  }

  static Map<String, RoleRelationship> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RoleRelationship>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RoleRelationship.fromJson(value));
    }
    return map;
  }
}
