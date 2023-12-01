part of swagger.api;

class PartitionListLinks {
  
  String self = null;

  String next = null;

  PartitionListLinks();

  @override
  String toString() {
    return 'PartitionListLinks[self=$self, next=$next, ]';
  }

  PartitionListLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = json['self'];
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'next': next
     };
  }

  static List<PartitionListLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<PartitionListLinks>() : json.map((value) => new PartitionListLinks.fromJson(value)).toList();
  }

  static Map<String, PartitionListLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PartitionListLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PartitionListLinks.fromJson(value));
    }
    return map;
  }
}
