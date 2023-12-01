part of swagger.api;

class PartitionRelationships {
  
  CustomerRelationship ownedByCustomer = null;

  PartitionRelationships();

  @override
  String toString() {
    return 'PartitionRelationships[ownedByCustomer=$ownedByCustomer, ]';
  }

  PartitionRelationships.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ownedByCustomer = new CustomerRelationship.fromJson(json['ownedByCustomer']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ownedByCustomer': ownedByCustomer
     };
  }

  static List<PartitionRelationships> listFromJson(List<dynamic> json) {
    return json == null ? new List<PartitionRelationships>() : json.map((value) => new PartitionRelationships.fromJson(value)).toList();
  }

  static Map<String, PartitionRelationships> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PartitionRelationships>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PartitionRelationships.fromJson(value));
    }
    return map;
  }
}
