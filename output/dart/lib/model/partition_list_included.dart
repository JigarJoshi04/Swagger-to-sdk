part of swagger.api;

class PartitionListIncluded {
  
  String type = null;
/* ID */
  String id = null;

  PartitionListAttributes attributes = null;

  PartitionListIncluded();

  @override
  String toString() {
    return 'PartitionListIncluded[type=$type, id=$id, attributes=$attributes, ]';
  }

  PartitionListIncluded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    id = json['id'];
    attributes = new PartitionListAttributes.fromJson(json['attributes']);
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id,
      'attributes': attributes
     };
  }

  static List<PartitionListIncluded> listFromJson(List<dynamic> json) {
    return json == null ? new List<PartitionListIncluded>() : json.map((value) => new PartitionListIncluded.fromJson(value)).toList();
  }

  static Map<String, PartitionListIncluded> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PartitionListIncluded>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PartitionListIncluded.fromJson(value));
    }
    return map;
  }
}
