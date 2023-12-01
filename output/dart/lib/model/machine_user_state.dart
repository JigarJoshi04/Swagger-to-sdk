part of swagger.api;

class MachineUserState {
  /* Status of Machine User */
  String current = null;
/* Status since time */
  String since = null;
/* was set to this status by(ID) */
  String actionBy = null;

  MachineUserState();

  @override
  String toString() {
    return 'MachineUserState[current=$current, since=$since, actionBy=$actionBy, ]';
  }

  MachineUserState.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    current = json['current'];
    since = json['since'];
    actionBy = json['actionBy'];
  }

  Map<String, dynamic> toJson() {
    return {
      'current': current,
      'since': since,
      'actionBy': actionBy
     };
  }

  static List<MachineUserState> listFromJson(List<dynamic> json) {
    return json == null ? new List<MachineUserState>() : json.map((value) => new MachineUserState.fromJson(value)).toList();
  }

  static Map<String, MachineUserState> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MachineUserState>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MachineUserState.fromJson(value));
    }
    return map;
  }
}
