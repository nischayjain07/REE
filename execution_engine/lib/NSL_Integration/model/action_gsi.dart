class ActionGSIList {
  int? status;
  String? message;
  List<ActionGSI>? result;

  ActionGSIList({
    this.status,
    this.message,
    this.result,
  });

  ActionGSIList.fromJson(Map<String, dynamic> json) {
    status = json['status'] as int?;
    message = json['message'] as String?;
    result = (json['result'] as List?)?.map((dynamic e) => ActionGSI.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status'] = status;
    json['message'] = message;
    json['result'] = result?.map((e) => e.toJson()).toList();
    return json;
  }
}

class ActionGSI {
  int? id;
  String? name;
  String? displayName;
  int? masterId;
  String? status;
  String? version;
  String? entityType;

  ActionGSI({
    this.id,
    this.name,
    this.displayName,
    this.masterId,
    this.status,
    this.version,
    this.entityType,
  });

  ActionGSI.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    name = json['name'] as String?;
    displayName = json['displayName'] as String?;
    masterId = json['masterId'] as int?;
    status = json['status'] as String?;
    version = json['version'] as String?;
    entityType = json['entityType'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['name'] = name;
    json['displayName'] = displayName;
    json['masterId'] = masterId;
    json['status'] = status;
    json['version'] = version;
    json['entityType'] = entityType;
    return json;
  }
}