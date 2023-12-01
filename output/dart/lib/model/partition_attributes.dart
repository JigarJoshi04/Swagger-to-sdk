part of swagger.api;

class PartitionAttributes {
  
  String name = null;

  String description = null;

  PartitionAttributes();

  @override
  String toString() {
    return 'PartitionAttributes[name=$name, description=$description, ]';
  }

  PartitionAttributes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description
     };
  }

  static List<PartitionAttributes> listFromJson(List<dynamic> json) {
    return json == null ? new List<PartitionAttributes>() : json.map((value) => new PartitionAttributes.fromJson(value)).toList();
  }

  static Map<String, PartitionAttributes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PartitionAttributes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PartitionAttributes.fromJson(value));
    }
    return map;
  }
}
