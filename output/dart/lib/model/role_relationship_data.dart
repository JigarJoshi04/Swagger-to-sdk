part of swagger.api;

class RoleRelationshipData {
  
  String type = null;
  //enum typeEnum {  Role,  };

  String id = null;

  RoleRelationshipData();

  @override
  String toString() {
    return 'RoleRelationshipData[type=$type, id=$id, ]';
  }

  RoleRelationshipData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id
     };
  }

  static List<RoleRelationshipData> listFromJson(List<dynamic> json) {
    return json == null ? new List<RoleRelationshipData>() : json.map((value) => new RoleRelationshipData.fromJson(value)).toList();
  }

  static Map<String, RoleRelationshipData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RoleRelationshipData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RoleRelationshipData.fromJson(value));
    }
    return map;
  }
}
