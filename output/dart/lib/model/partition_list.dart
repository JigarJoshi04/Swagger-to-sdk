part of swagger.api;

class PartitionList {
  
  PartitionListLinks links = null;

  List<Partition> data = [];
/* Included resources based in `include` query param */
  List<PartitionListIncluded> included = [];

  PartitionList();

  @override
  String toString() {
    return 'PartitionList[links=$links, data=$data, included=$included, ]';
  }

  PartitionList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    links = new PartitionListLinks.fromJson(json['links']);
    data = Partition.listFromJson(json['data']);
    included = PartitionListIncluded.listFromJson(json['included']);
  }

  Map<String, dynamic> toJson() {
    return {
      'links': links,
      'data': data,
      'included': included
     };
  }

  static List<PartitionList> listFromJson(List<dynamic> json) {
    return json == null ? new List<PartitionList>() : json.map((value) => new PartitionList.fromJson(value)).toList();
  }

  static Map<String, PartitionList> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PartitionList>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PartitionList.fromJson(value));
    }
    return map;
  }
}
