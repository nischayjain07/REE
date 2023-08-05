class AllRoles {
  List<RolesList>? rolesList;
  int? activeRoles;
  int? totalRoles;

  AllRoles({
    this.rolesList,
    this.activeRoles,
    this.totalRoles,
  });

  AllRoles.fromJson(Map<String, dynamic> json) {
    rolesList = (json['rolesList'] as List?)?.map((dynamic e) => RolesList.fromJson(e as Map<String,dynamic>)).toList();
    activeRoles = json['activeRoles'] as int?;
    totalRoles = json['totalRoles'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['rolesList'] = rolesList?.map((e) => e.toJson()).toList();
    json['activeRoles'] = activeRoles;
    json['totalRoles'] = totalRoles;
    return json;
  }
}

class RolesList {
  int? id;
  int? createdAt;
  String? name;
  String? description;
  bool? isEnabled;
  bool? isAdmin;
  String? roleType;
  bool? isPublic;

  RolesList({
    this.id,
    this.createdAt,
    this.name,
    this.description,
    this.isEnabled,
    this.isAdmin,
    this.roleType,
    this.isPublic,
  });

  RolesList.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    createdAt = json['createdAt'] as int?;
    name = json['name'] as String?;
    description = json['description'] as String?;
    isEnabled = json['isEnabled'] as bool?;
    isAdmin = json['isAdmin'] as bool?;
    roleType = json['roleType'] as String?;
    isPublic = json['isPublic'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['createdAt'] = createdAt;
    json['name'] = name;
    json['description'] = description;
    json['isEnabled'] = isEnabled;
    json['isAdmin'] = isAdmin;
    json['roleType'] = roleType;
    json['isPublic'] = isPublic;
    return json;
  }
}