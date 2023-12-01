part of swagger.api;

class Error {
  
  List<ErrorErrors> errors = [];

  Error();

  @override
  String toString() {
    return 'Error[errors=$errors, ]';
  }

  Error.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    errors = ErrorErrors.listFromJson(json['errors']);
  }

  Map<String, dynamic> toJson() {
    return {
      'errors': errors
     };
  }

  static List<Error> listFromJson(List<dynamic> json) {
    return json == null ? new List<Error>() : json.map((value) => new Error.fromJson(value)).toList();
  }

  static Map<String, Error> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Error>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Error.fromJson(value));
    }
    return map;
  }
}
