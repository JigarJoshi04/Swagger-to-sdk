part of swagger.api;

class CustomerRelationship {
  
  CustomerRelationshipData data = null;

  CustomerRelationship();

  @override
  String toString() {
    return 'CustomerRelationship[data=$data, ]';
  }

  CustomerRelationship.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = new CustomerRelationshipData.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data
     };
  }

  static List<CustomerRelationship> listFromJson(List<dynamic> json) {
    return json == null ? new List<CustomerRelationship>() : json.map((value) => new CustomerRelationship.fromJson(value)).toList();
  }

  static Map<String, CustomerRelationship> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CustomerRelationship>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CustomerRelationship.fromJson(value));
    }
    return map;
  }
}
