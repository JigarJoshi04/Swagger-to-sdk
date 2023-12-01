part of swagger.api;

class MachineUserRelationships {
  
  CustomerRelationship ownedBy = null;

  MachineUserRelationships();

  @override
  String toString() {
    return 'MachineUserRelationships[ownedBy=$ownedBy, ]';
  }

  MachineUserRelationships.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ownedBy = new CustomerRelationship.fromJson(json['ownedBy']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ownedBy': ownedBy
     };
  }

  static List<MachineUserRelationships> listFromJson(List<dynamic> json) {
    return json == null ? new List<MachineUserRelationships>() : json.map((value) => new MachineUserRelationships.fromJson(value)).toList();
  }

  static Map<String, MachineUserRelationships> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MachineUserRelationships>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MachineUserRelationships.fromJson(value));
    }
    return map;
  }
}
