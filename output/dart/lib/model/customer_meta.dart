part of swagger.api;

class CustomerMeta {
  
  DateTime updatedAt = null;

  String updatedBy = null;

  CustomerMeta();

  @override
  String toString() {
    return 'CustomerMeta[updatedAt=$updatedAt, updatedBy=$updatedBy, ]';
  }

  CustomerMeta.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    updatedAt = json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    updatedBy = json['updatedBy'];
  }

  Map<String, dynamic> toJson() {
    return {
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'updatedBy': updatedBy
     };
  }

  static List<CustomerMeta> listFromJson(List<dynamic> json) {
    return json == null ? new List<CustomerMeta>() : json.map((value) => new CustomerMeta.fromJson(value)).toList();
  }

  static Map<String, CustomerMeta> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CustomerMeta>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CustomerMeta.fromJson(value));
    }
    return map;
  }
}
