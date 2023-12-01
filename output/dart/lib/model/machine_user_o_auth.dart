part of swagger.api;

class MachineUserOAuth {
  /* ID of client */
  String clientId = null;
/* issuer of oAuth */
  String issuer = null;
/* Audience */
  String audience = null;
/* Time of secret creation */
  String secretCreated = null;
/* time of secret rotation */
  String secretRotated = null;

  MachineUserOAuth();

  @override
  String toString() {
    return 'MachineUserOAuth[clientId=$clientId, issuer=$issuer, audience=$audience, secretCreated=$secretCreated, secretRotated=$secretRotated, ]';
  }

  MachineUserOAuth.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    clientId = json['clientId'];
    issuer = json['issuer'];
    audience = json['audience'];
    secretCreated = json['secretCreated'];
    secretRotated = json['secretRotated'];
  }

  Map<String, dynamic> toJson() {
    return {
      'clientId': clientId,
      'issuer': issuer,
      'audience': audience,
      'secretCreated': secretCreated,
      'secretRotated': secretRotated
     };
  }

  static List<MachineUserOAuth> listFromJson(List<dynamic> json) {
    return json == null ? new List<MachineUserOAuth>() : json.map((value) => new MachineUserOAuth.fromJson(value)).toList();
  }

  static Map<String, MachineUserOAuth> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MachineUserOAuth>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MachineUserOAuth.fromJson(value));
    }
    return map;
  }
}
