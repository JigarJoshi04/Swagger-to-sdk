part of swagger.api;

class PartitionRelationshipData {
  
  String type = null;
  //enum typeEnum {  Partition,  };

  String id = null;

  PartitionRelationshipData();

  @override
  String toString() {
    return 'PartitionRelationshipData[type=$type, id=$id, ]';
  }

  PartitionRelationshipData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id
     };
  }

  static List<PartitionRelationshipData> listFromJson(List<dynamic> json) {
    return json == null ? new List<PartitionRelationshipData>() : json.map((value) => new PartitionRelationshipData.fromJson(value)).toList();
  }

  static Map<String, PartitionRelationshipData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PartitionRelationshipData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PartitionRelationshipData.fromJson(value));
    }
    return map;
  }
}
