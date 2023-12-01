part of swagger.api;

class UserMembershipAttributes {
  /* State of the membership */
  String state = null;
  //enum stateEnum {  active,  suspended,  };

  UserMembershipAttributes();

  @override
  String toString() {
    return 'UserMembershipAttributes[state=$state, ]';
  }

  UserMembershipAttributes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    return {
      'state': state
     };
  }

  static List<UserMembershipAttributes> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserMembershipAttributes>() : json.map((value) => new UserMembershipAttributes.fromJson(value)).toList();
  }

  static Map<String, UserMembershipAttributes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserMembershipAttributes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserMembershipAttributes.fromJson(value));
    }
    return map;
  }
}
