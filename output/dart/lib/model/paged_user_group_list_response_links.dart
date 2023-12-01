part of swagger.api;

class PagedUserGroupListResponseLinks {
  
  String self = null;

  String next = null;

  PagedUserGroupListResponseLinks();

  @override
  String toString() {
    return 'PagedUserGroupListResponseLinks[self=$self, next=$next, ]';
  }

  PagedUserGroupListResponseLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = json['self'];
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'next': next
     };
  }

  static List<PagedUserGroupListResponseLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedUserGroupListResponseLinks>() : json.map((value) => new PagedUserGroupListResponseLinks.fromJson(value)).toList();
  }

  static Map<String, PagedUserGroupListResponseLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedUserGroupListResponseLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedUserGroupListResponseLinks.fromJson(value));
    }
    return map;
  }
}
