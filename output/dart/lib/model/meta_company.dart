part of swagger.api;

class MetaCompany {
  
  String name = null;

  MetaCompany();

  @override
  String toString() {
    return 'MetaCompany[name=$name, ]';
  }

  MetaCompany.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name
     };
  }

  static List<MetaCompany> listFromJson(List<dynamic> json) {
    return json == null ? new List<MetaCompany>() : json.map((value) => new MetaCompany.fromJson(value)).toList();
  }

  static Map<String, MetaCompany> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MetaCompany>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MetaCompany.fromJson(value));
    }
    return map;
  }
}
