part of swagger.api;

class ErrorErrors {
  /* A unique identifier for this particular occurrence of the problem. */
  String id = null;
/* An application-specific error code, expressed as a string value. */
  String code = null;
/* The HTTP status code applicable to this problem, expressed as a string value. */
  String status = null;
/* A short, human-readable summary of the problem that SHOULD NOT change from occurrence to occurrence of the problem, except for purposes of localization. */
  String title = null;
/* a human-readable explanation specific to this occurrence of the problem. Like title, this field’s value can be localized. */
  String detail = null;

  ErrorErrors();

  @override
  String toString() {
    return 'ErrorErrors[id=$id, code=$code, status=$status, title=$title, detail=$detail, ]';
  }

  ErrorErrors.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    code = json['code'];
    status = json['status'];
    title = json['title'];
    detail = json['detail'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'code': code,
      'status': status,
      'title': title,
      'detail': detail
     };
  }

  static List<ErrorErrors> listFromJson(List<dynamic> json) {
    return json == null ? new List<ErrorErrors>() : json.map((value) => new ErrorErrors.fromJson(value)).toList();
  }

  static Map<String, ErrorErrors> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ErrorErrors>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ErrorErrors.fromJson(value));
    }
    return map;
  }
}
