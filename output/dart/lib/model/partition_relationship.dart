part of swagger.api;

class PartitionRelationship {
  
  List<PartitionRelationshipData> data = [];

  PartitionRelationship();

  @override
  String toString() {
    return 'PartitionRelationship[data=$data, ]';
  }

  PartitionRelationship.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = PartitionRelationshipData.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data
     };
  }

  static List<PartitionRelationship> listFromJson(List<dynamic> json) {
    return json == null ? new List<PartitionRelationship>() : json.map((value) => new PartitionRelationship.fromJson(value)).toList();
  }

  static Map<String, PartitionRelationship> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PartitionRelationship>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PartitionRelationship.fromJson(value));
    }
    return map;
  }
}
