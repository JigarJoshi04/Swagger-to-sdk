part of swagger.api;

class MachineUser {
  
  String type = null;
  //enum typeEnum {  MachineUser,  };
/* ID of the Machine User  */
  String id = null;

  MachineUserResponseAttributes attributes = null;

  MachineUserRelationships relationships = null;

  MachineUserMeta meta = null;

  MachineUser();

  @override
  String toString() {
    return 'MachineUser[type=$type, id=$id, attributes=$attributes, relationships=$relationships, meta=$meta, ]';
  }

  MachineUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    id = json['id'];
    attributes = new MachineUserResponseAttributes.fromJson(json['attributes']);
    relationships = new MachineUserRelationships.fromJson(json['relationships']);
    meta = new MachineUserMeta.fromJson(json['meta']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id,
      'attributes': attributes,
      'relationships': relationships,
      'meta': meta
     };
  }

  static List<MachineUser> listFromJson(List<dynamic> json) {
    return json == null ? new List<MachineUser>() : json.map((value) => new MachineUser.fromJson(value)).toList();
  }

  static Map<String, MachineUser> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MachineUser>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MachineUser.fromJson(value));
    }
    return map;
  }
}
