part of swagger.api;

class PartitionListAttributes {
  
  String name = null;

  PartitionListAttributes();

  @override
  String toString() {
    return 'PartitionListAttributes[name=$name, ]';
  }

  PartitionListAttributes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name
     };
  }

  static List<PartitionListAttributes> listFromJson(List<dynamic> json) {
    return json == null ? new List<PartitionListAttributes>() : json.map((value) => new PartitionListAttributes.fromJson(value)).toList();
  }

  static Map<String, PartitionListAttributes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PartitionListAttributes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PartitionListAttributes.fromJson(value));
    }
    return map;
  }
}
