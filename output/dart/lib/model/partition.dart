part of swagger.api;

class Partition {
  
  String type = null;

  String id = null;

  PartitionAttributes attributes = null;

  PartitionRelationships relationships = null;

  Partition();

  @override
  String toString() {
    return 'Partition[type=$type, id=$id, attributes=$attributes, relationships=$relationships, ]';
  }

  Partition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    id = json['id'];
    attributes = new PartitionAttributes.fromJson(json['attributes']);
    relationships = new PartitionRelationships.fromJson(json['relationships']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id,
      'attributes': attributes,
      'relationships': relationships
     };
  }

  static List<Partition> listFromJson(List<dynamic> json) {
    return json == null ? new List<Partition>() : json.map((value) => new Partition.fromJson(value)).toList();
  }

  static Map<String, Partition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Partition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Partition.fromJson(value));
    }
    return map;
  }
}
