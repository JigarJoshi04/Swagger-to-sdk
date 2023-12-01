part of swagger.api;

class MachineUserMeta {
  
  DateTime createdAt = null;

  DateTime updatedAt = null;

  String createdBy = null;

  String updatedBy = null;

  MachineUserMeta();

  @override
  String toString() {
    return 'MachineUserMeta[createdAt=$createdAt, updatedAt=$updatedAt, createdBy=$createdBy, updatedBy=$updatedBy, ]';
  }

  MachineUserMeta.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    updatedAt = json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    createdBy = json['createdBy'];
    updatedBy = json['updatedBy'];
  }

  Map<String, dynamic> toJson() {
    return {
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'createdBy': createdBy,
      'updatedBy': updatedBy
     };
  }

  static List<MachineUserMeta> listFromJson(List<dynamic> json) {
    return json == null ? new List<MachineUserMeta>() : json.map((value) => new MachineUserMeta.fromJson(value)).toList();
  }

  static Map<String, MachineUserMeta> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MachineUserMeta>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MachineUserMeta.fromJson(value));
    }
    return map;
  }
}
