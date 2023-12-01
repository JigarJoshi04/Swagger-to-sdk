part of swagger.api;

class CustomerAttributes {
  
  String name = null;

  UserMembershipAttributes customerMembershipState = null;

  CustomerAttributes();

  @override
  String toString() {
    return 'CustomerAttributes[name=$name, customerMembershipState=$customerMembershipState, ]';
  }

  CustomerAttributes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    customerMembershipState = new UserMembershipAttributes.fromJson(json['customerMembershipState']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'customerMembershipState': customerMembershipState
     };
  }

  static List<CustomerAttributes> listFromJson(List<dynamic> json) {
    return json == null ? new List<CustomerAttributes>() : json.map((value) => new CustomerAttributes.fromJson(value)).toList();
  }

  static Map<String, CustomerAttributes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CustomerAttributes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CustomerAttributes.fromJson(value));
    }
    return map;
  }
}
