part of swagger.api;

class MachineUserResponseAttributes {
  /* Name of Machine User */
  String name = null;
/* Purpose of this machine user */
  String purpose = null;

  MachineUserState state = null;

  MachineUserOAuth oAuth = null;

  MachineUserResponseAttributes();

  @override
  String toString() {
    return 'MachineUserResponseAttributes[name=$name, purpose=$purpose, state=$state, oAuth=$oAuth, ]';
  }

  MachineUserResponseAttributes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    purpose = json['purpose'];
    state = new MachineUserState.fromJson(json['state']);
    oAuth = new MachineUserOAuth.fromJson(json['oAuth']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'purpose': purpose,
      'state': state,
      'oAuth': oAuth
     };
  }

  static List<MachineUserResponseAttributes> listFromJson(List<dynamic> json) {
    return json == null ? new List<MachineUserResponseAttributes>() : json.map((value) => new MachineUserResponseAttributes.fromJson(value)).toList();
  }

  static Map<String, MachineUserResponseAttributes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MachineUserResponseAttributes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MachineUserResponseAttributes.fromJson(value));
    }
    return map;
  }
}
