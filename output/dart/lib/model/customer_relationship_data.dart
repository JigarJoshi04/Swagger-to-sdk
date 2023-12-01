part of swagger.api;

class CustomerRelationshipData {
  
  String type = null;
  //enum typeEnum {  Customer,  };

  String id = null;

  CustomerRelationshipData();

  @override
  String toString() {
    return 'CustomerRelationshipData[type=$type, id=$id, ]';
  }

  CustomerRelationshipData.fromJson(Map<String, dynamic> json) {
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

  static List<CustomerRelationshipData> listFromJson(List<dynamic> json) {
    return json == null ? new List<CustomerRelationshipData>() : json.map((value) => new CustomerRelationshipData.fromJson(value)).toList();
  }

  static Map<String, CustomerRelationshipData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CustomerRelationshipData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CustomerRelationshipData.fromJson(value));
    }
    return map;
  }
}
