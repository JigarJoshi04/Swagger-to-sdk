part of swagger.api;

class UserResponseAttributesIdentity {
  /* email address of the user */
  String emailId = null;
/* horizon ID of the user within Siemens ID */
  String externalId = null;
/* user's family name */
  String familyName = null;
/* user's full name */
  String fullName = null;
/* user's given name */
  String givenName = null;

  UserResponseAttributesIdentity();

  @override
  String toString() {
    return 'UserResponseAttributesIdentity[emailId=$emailId, externalId=$externalId, familyName=$familyName, fullName=$fullName, givenName=$givenName, ]';
  }

  UserResponseAttributesIdentity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    emailId = json['emailId'];
    externalId = json['externalId'];
    familyName = json['familyName'];
    fullName = json['fullName'];
    givenName = json['givenName'];
  }

  Map<String, dynamic> toJson() {
    return {
      'emailId': emailId,
      'externalId': externalId,
      'familyName': familyName,
      'fullName': fullName,
      'givenName': givenName
     };
  }

  static List<UserResponseAttributesIdentity> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserResponseAttributesIdentity>() : json.map((value) => new UserResponseAttributesIdentity.fromJson(value)).toList();
  }

  static Map<String, UserResponseAttributesIdentity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserResponseAttributesIdentity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserResponseAttributesIdentity.fromJson(value));
    }
    return map;
  }
}
