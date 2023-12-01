part of swagger.api;

class CustomerList {
  
  CustomerListLinks links = null;

  List<Customer> data = [];

  CustomerList();

  @override
  String toString() {
    return 'CustomerList[links=$links, data=$data, ]';
  }

  CustomerList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    links = new CustomerListLinks.fromJson(json['links']);
    data = Customer.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'links': links,
      'data': data
     };
  }

  static List<CustomerList> listFromJson(List<dynamic> json) {
    return json == null ? new List<CustomerList>() : json.map((value) => new CustomerList.fromJson(value)).toList();
  }

  static Map<String, CustomerList> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CustomerList>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CustomerList.fromJson(value));
    }
    return map;
  }
}
