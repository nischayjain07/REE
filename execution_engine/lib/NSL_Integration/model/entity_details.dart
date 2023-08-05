class EntityDetails {
  int? status;
  String? message;
  Result? result;

  EntityDetails({
    this.status,
    this.message,
    this.result,
  });

  EntityDetails.fromJson(Map<String, dynamic> json) {
    status = json['status'] as int?;
    message = json['message'] as String?;
    result = (json['result'] as Map<String,dynamic>?) != null ? Result.fromJson(json['result'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status'] = status;
    json['message'] = message;
    json['result'] = result?.toJson();
    return json;
  }
}

class Result {
  List<EntityData>? entityDataList;
  int? page;
  int? limit;
  int? totalPages;
  int? totalResults;

  Result({
    this.entityDataList,
    this.page,
    this.limit,
    this.totalPages,
    this.totalResults,
  });

  Result.fromJson(Map<String, dynamic> json) {
    entityDataList = (json['data'] as List?)?.map((dynamic e) => EntityData.fromJson(e as Map<String,dynamic>)).toList();
    page = json['page'] as int?;
    limit = json['limit'] as int?;
    totalPages = json['totalPages'] as int?;
    totalResults = json['totalResults'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['data'] = entityDataList?.map((e) => e.toJson()).toList();
    json['page'] = page;
    json['limit'] = limit;
    json['totalPages'] = totalPages;
    json['totalResults'] = totalResults;
    return json;
  }
}

class EntityData {
  String? name;
  String? displayName;
  int? masterId;
  String? version;
  String? status;
  bool? isReserved;
  bool? isMasterData;
  int? id;
  int? ownerId;
  String? dsdId;

  EntityData({
    this.name,
    this.displayName,
    this.masterId,
    this.version,
    this.status,
    this.isReserved,
    this.isMasterData,
    this.id,
    this.ownerId,
    this.dsdId,
  });

  EntityData.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    displayName = json['displayName'] as String?;
    masterId = json['masterId'] as int?;
    version = json['version'] as String?;
    status = json['status'] as String?;
    isReserved = json['isReserved'] as bool?;
    isMasterData = json['isMasterData'] as bool?;
    id = json['id'] as int?;
    ownerId = json['ownerId'] as int?;
    dsdId = json['dsdId'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['displayName'] = displayName;
    json['masterId'] = masterId;
    json['version'] = version;
    json['status'] = status;
    json['isReserved'] = isReserved;
    json['isMasterData'] = isMasterData;
    json['id'] = id;
    json['ownerId'] = ownerId;
    json['dsdId'] = dsdId;
    return json;
  }
}