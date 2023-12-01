part of swagger.api;

class Customer {
  
  String type = null;
  //enum typeEnum {  Customer,  };

  String id = null;

  CustomerAttributes attributes = null;

  CustomerMeta meta = null;

  Customer();

  @override
  String toString() {
    return 'Customer[type=$type, id=$id, attributes=$attributes, meta=$meta, ]';
  }

  Customer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    id = json['id'];
    attributes = new CustomerAttributes.fromJson(json['attributes']);
    meta = new CustomerMeta.fromJson(json['meta']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id,
      'attributes': attributes,
      'meta': meta
     };
  }

  static List<Customer> listFromJson(List<dynamic> json) {
    return json == null ? new List<Customer>() : json.map((value) => new Customer.fromJson(value)).toList();
  }

  static Map<String, Customer> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Customer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Customer.fromJson(value));
    }
    return map;
  }
}
