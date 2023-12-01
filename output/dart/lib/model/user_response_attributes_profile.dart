part of swagger.api;

class UserResponseAttributesProfile {
  /* free text user info */
  String freeText = null;
/* user's job description */
  String jobDescription = null;
/* user's contact phone number */
  String phone = null;
/* user's profile image */
  String profileImage = null;

  UserResponseAttributesProfile();

  @override
  String toString() {
    return 'UserResponseAttributesProfile[freeText=$freeText, jobDescription=$jobDescription, phone=$phone, profileImage=$profileImage, ]';
  }

  UserResponseAttributesProfile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    freeText = json['freeText'];
    jobDescription = json['jobDescription'];
    phone = json['phone'];
    profileImage = json['profileImage'];
  }

  Map<String, dynamic> toJson() {
    return {
      'freeText': freeText,
      'jobDescription': jobDescription,
      'phone': phone,
      'profileImage': profileImage
     };
  }

  static List<UserResponseAttributesProfile> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserResponseAttributesProfile>() : json.map((value) => new UserResponseAttributesProfile.fromJson(value)).toList();
  }

  static Map<String, UserResponseAttributesProfile> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserResponseAttributesProfile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserResponseAttributesProfile.fromJson(value));
    }
    return map;
  }
}
