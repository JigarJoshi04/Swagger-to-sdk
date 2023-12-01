part of swagger.api;

class CustomerListLinks {
  
  String self = null;

  String next = null;

  CustomerListLinks();

  @override
  String toString() {
    return 'CustomerListLinks[self=$self, next=$next, ]';
  }

  CustomerListLinks.fromJson(Map<String, dynamic> json) {
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

  static List<CustomerListLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<CustomerListLinks>() : json.map((value) => new CustomerListLinks.fromJson(value)).toList();
  }

  static Map<String, CustomerListLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CustomerListLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CustomerListLinks.fromJson(value));
    }
    return map;
  }
}
