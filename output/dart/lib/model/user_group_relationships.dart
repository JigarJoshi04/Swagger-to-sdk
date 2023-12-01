part of swagger.api;

class UserGroupRelationships {
  
  PartitionRelationship hasAccessTo = null;

  RoleRelationship authorizedAs = null;

  CustomerRelationship ownedBy = null;

  UserGroupRelationships();

  @override
  String toString() {
    return 'UserGroupRelationships[hasAccessTo=$hasAccessTo, authorizedAs=$authorizedAs, ownedBy=$ownedBy, ]';
  }

  UserGroupRelationships.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hasAccessTo = new PartitionRelationship.fromJson(json['hasAccessTo']);
    authorizedAs = new RoleRelationship.fromJson(json['authorizedAs']);
    ownedBy = new CustomerRelationship.fromJson(json['ownedBy']);
  }

  Map<String, dynamic> toJson() {
    return {
      'hasAccessTo': hasAccessTo,
      'authorizedAs': authorizedAs,
      'ownedBy': ownedBy
     };
  }

  static List<UserGroupRelationships> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserGroupRelationships>() : json.map((value) => new UserGroupRelationships.fromJson(value)).toList();
  }

  static Map<String, UserGroupRelationships> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserGroupRelationships>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserGroupRelationships.fromJson(value));
    }
    return map;
  }
}
