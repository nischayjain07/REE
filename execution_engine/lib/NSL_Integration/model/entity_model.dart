import 'package:execution_engine/NSL_Integration/model/attribute_ui_control.dart';
import 'package:execution_engine/NSL_Integration/model/nsl_attributes.dart';
import 'package:execution_engine/NSL_Integration/model/source_values.dart';

class Entity {
  int? status;
  String? message;
  Result? result;

  Entity({
    this.status,
    this.message,
    this.result,
  });

  Entity.fromJson(Map<String, dynamic> json) {
    status = json['status'] as int?;
    message = json['message'] as String?;
    result = (json['result'] as Map<String, dynamic>?) != null
        ? Result.fromJson(json['result'] as Map<String, dynamic>)
        : null;
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
  String? dsdId;
  int? id;
  bool? isMasterData;
  List<NslAttributes>? nslAttributes;
  bool? isReserved;
  int? ownerId;
  bool? canDownload;
  Tenant? tenant;
  String? dsdMetadataId;
  bool? exportDesignSystem;
  NaqResultsForBET? naqResultsForBET;
  String? name;
  String? displayName;
  String? description;
  String? source;
  int? masterId;
  String? version;
  String? status;
  bool? isNameUpdated;
  List<Ontology>? ontology;
  List<dynamic>? attachments;
  List<String>? keywords;
  Publisher? publisher;
  Author? author;
  int? minAge;
  int? maxAge;
  bool? editable;
  String? approvalStatus;
  List<TimeRights>? designTimeRights;
  List<TimeRights>? txnTimeRights;

  Result({
    this.dsdId,
    this.id,
    this.isMasterData,
    this.nslAttributes,
    this.isReserved,
    this.ownerId,
    this.canDownload,
    this.tenant,
    this.dsdMetadataId,
    this.exportDesignSystem,
    this.naqResultsForBET,
    this.name,
    this.displayName,
    this.description,
    this.source,
    this.masterId,
    this.version,
    this.status,
    this.isNameUpdated,
    this.ontology,
    this.attachments,
    this.keywords,
    this.publisher,
    this.author,
    this.minAge,
    this.maxAge,
    this.editable,
    this.approvalStatus,
    this.designTimeRights,
    this.txnTimeRights,
  });

  Result.fromJson(Map<String, dynamic> json) {
    dsdId = json['dsdId'] as String?;
    id = json['id'] as int?;
    isMasterData = json['isMasterData'] as bool?;
    nslAttributes = (json['nslAttributes'] as List?)
        ?.map((dynamic e) => NslAttributes.fromJson(e as Map<String, dynamic>))
        .toList();
    isReserved = json['isReserved'] as bool?;
    ownerId = json['ownerId'] as int?;
    canDownload = json['canDownload'] as bool?;
    tenant = (json['tenant'] as Map<String, dynamic>?) != null
        ? Tenant.fromJson(json['tenant'] as Map<String, dynamic>)
        : null;
    dsdMetadataId = json['dsdMetadataId'] as String?;
    exportDesignSystem = json['exportDesignSystem'] as bool?;
    naqResultsForBET = (json['naqResultsForBET'] as Map<String, dynamic>?) != null
        ? NaqResultsForBET.fromJson(json['naqResultsForBET'] as Map<String, dynamic>)
        : null;
    name = json['name'] as String?;
    displayName = json['displayName'] as String?;
    description = json['description'] as String?;
    source = json['source'] as String?;
    masterId = json['masterId'] as int?;
    version = json['version'] as String?;
    status = json['status'] as String?;
    isNameUpdated = json['isNameUpdated'] as bool?;
    ontology = (json['ontology'] as List?)?.map((dynamic e) => Ontology.fromJson(e as Map<String, dynamic>)).toList();
    attachments = json['attachments'] as List?;
    keywords = (json['keywords'] as List?)?.map((dynamic e) => e as String).toList();
    publisher = (json['publisher'] as Map<String, dynamic>?) != null
        ? Publisher.fromJson(json['publisher'] as Map<String, dynamic>)
        : null;
    author = (json['author'] as Map<String, dynamic>?) != null
        ? Author.fromJson(json['author'] as Map<String, dynamic>)
        : null;
    minAge = json['minAge'] as int?;
    maxAge = json['maxAge'] as int?;
    editable = json['editable'] as bool?;
    approvalStatus = json['approvalStatus'] as String?;
    designTimeRights = (json['designTimeRights'] as List?)
        ?.map((dynamic e) => TimeRights.fromJson(e as Map<String, dynamic>))
        .toList();
    txnTimeRights =
        (json['txnTimeRights'] as List?)?.map((dynamic e) => TimeRights.fromJson(e as Map<String, dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['dsdId'] = dsdId;
    json['id'] = id;
    json['isMasterData'] = isMasterData;
    json['nslAttributes'] = nslAttributes?.map((e) => e.toJson()).toList();
    json['isReserved'] = isReserved;
    json['ownerId'] = ownerId;
    json['canDownload'] = canDownload;
    json['tenant'] = tenant?.toJson();
    json['dsdMetadataId'] = dsdMetadataId;
    json['exportDesignSystem'] = exportDesignSystem;
    json['naqResultsForBET'] = naqResultsForBET?.toJson();
    json['name'] = name;
    json['displayName'] = displayName;
    json['description'] = description;
    json['source'] = source;
    json['masterId'] = masterId;
    json['version'] = version;
    json['status'] = status;
    json['isNameUpdated'] = isNameUpdated;
    json['ontology'] = ontology?.map((e) => e.toJson()).toList();
    json['attachments'] = attachments;
    json['keywords'] = keywords;
    json['publisher'] = publisher?.toJson();
    json['author'] = author?.toJson();
    json['minAge'] = minAge;
    json['maxAge'] = maxAge;
    json['editable'] = editable;
    json['approvalStatus'] = approvalStatus;
    json['designTimeRights'] = designTimeRights?.map((e) => e.toJson()).toList();
    json['txnTimeRights'] = txnTimeRights?.map((e) => e.toJson()).toList();
    return json;
  }
}

class TimeRights {
  bool? informationRight;
  bool? decisionRight;
  bool? executionRight;
  int? rightHolderId;
  String? rightHolderType;
  String? rightHolderName;
  bool? disableParentRoleAccess;

  TimeRights({
    this.informationRight,
    this.decisionRight,
    this.executionRight,
    this.rightHolderId,
    this.rightHolderType,
    this.rightHolderName,
    this.disableParentRoleAccess,
  });

  TimeRights.fromJson(Map<String, dynamic> json) {
    informationRight = json['informationRight'] as bool?;
    decisionRight = json['decisionRight'] as bool?;
    executionRight = json['executionRight'] as bool?;
    rightHolderId = json['rightHolderId'] as int?;
    rightHolderType = json['rightHolderType'] as String?;
    rightHolderName = json['rightHolderName'] as String?;
    disableParentRoleAccess = json['disableParentRoleAccess'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['informationRight'] = informationRight;
    json['decisionRight'] = decisionRight;
    json['executionRight'] = executionRight;
    json['rightHolderId'] = rightHolderId;
    json['rightHolderType'] = rightHolderType;
    json['rightHolderName'] = rightHolderName;
    json['disableParentRoleAccess'] = disableParentRoleAccess;
    return json;
  }
}

class AttributeType {
  String? type;
  Properties? properties;
  AttributeUiControlDTO? uiElement;
  ExtendedProperties? extendedProperties;

  AttributeType({
    this.type,
    this.properties,
    this.uiElement,
    this.extendedProperties,
  });

  AttributeType.fromJson(Map<String, dynamic> json) {
    type = json['type'] as String?;
    properties = (json['properties'] as Map<String, dynamic>?) != null
        ? Properties.fromJson(json['properties'] as Map<String, dynamic>)
        : null;
    uiElement = (json['uiElement'] as Map<String, dynamic>?) != null
        ? AttributeUiControlDTO.fromJson(json['uiElement'] as Map<String, dynamic>)
        : null;
    extendedProperties = (json['extendedProperties'] as Map<String, dynamic>?) != null
        ? ExtendedProperties.fromJson(json['extendedProperties'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['type'] = type;
    json['properties'] = properties?.toJson();
    json['uiElement'] = uiElement?.toJson();
    json['extendedProperties'] = extendedProperties?.toJson();
    return json;
  }
}

class Properties {
  Properties();

  Properties.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};

    return json;
  }
}

// class AttributeUiControlDTO {
//   String? name;
//   String? displayName;
//   String? dataType;
//   String? uiElement;
//   bool? isMulti;
//   String? esDataType;
//   bool? defaultUiElement;
//   String? source;
//   List<String>? properties;

//   AttributeUiControlDTO({
//     this.name,
//     this.displayName,
//     this.dataType,
//     this.uiElement,
//     this.isMulti,
//     this.esDataType,
//     this.defaultUiElement,
//     this.source,
//     this.properties,
//   });

//   AttributeUiControlDTO.fromJson(Map<String, dynamic> json) {
//     name = json['name'] as String?;
//     displayName = json['displayName'] as String?;
//     dataType = json['dataType'] as String?;
//     uiElement = json['uiElement'] as String?;
//     isMulti = json['isMulti'] as bool?;
//     esDataType = json['esDataType'] as String?;
//     defaultUiElement = json['defaultUiElement'] as bool?;
//     source = json['source'] as String;
//     properties = (json['properties'] as List?)?.map((e) => e as String).toList();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['name'] = name;
//     json['displayName'] = displayName;
//     json['dataType'] = dataType;
//     json['uiElement'] = uiElement;
//     json['isMulti'] = isMulti;
//     json['esDataType'] = esDataType;
//     json['defaultUiElement'] = defaultUiElement;
//     json['source'] = source;
//     json['properties'] = properties;
//     return json;
//   }
// }

class ExtendedProperties {
  late List<SourceValuesDTO>? sourceValues;

  ExtendedProperties({this.sourceValues});

  ExtendedProperties.fromJson(Map<String, dynamic> json) {
    sourceValues =
        (json['sourceValues'] as List?)?.map((e) => SourceValuesDTO.fromJson(e as Map<String, dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['sourceValues'] = sourceValues;
    return json;
  }
}

class NslAttributeProperties {
  String? isTraceable;

  NslAttributeProperties({
    this.isTraceable,
  });

  NslAttributeProperties.fromJson(Map<String, dynamic> json) {
    isTraceable = json['isTraceable'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['isTraceable'] = isTraceable;
    return json;
  }
}

class NaqResultsForBET {
  bool? hasChildrenErrors;

  NaqResultsForBET({
    this.hasChildrenErrors,
  });

  NaqResultsForBET.fromJson(Map<String, dynamic> json) {
    hasChildrenErrors = json['hasChildrenErrors'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['hasChildrenErrors'] = hasChildrenErrors;
    return json;
  }
}

class Tenant {
  String? id;
  String? name;

  Tenant({
    this.id,
    this.name,
  });

  Tenant.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    name = json['name'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['name'] = name;
    return json;
  }
}

class Ontology {
  String? id;
  String? name;
  String? displayName;
  int? level;
  bool? isValidated;

  Ontology({
    this.id,
    this.name,
    this.displayName,
    this.level,
    this.isValidated,
  });

  Ontology.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    name = json['name'] as String?;
    displayName = json['displayName'] as String?;
    level = json['level'] as int?;
    isValidated = json['isValidated'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['name'] = name;
    json['displayName'] = displayName;
    json['level'] = level;
    json['isValidated'] = isValidated;
    return json;
  }
}

class Publisher {
  String? id;
  String? name;

  Publisher({
    this.id,
    this.name,
  });

  Publisher.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    name = json['name'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['name'] = name;
    return json;
  }
}

class Author {
  String? name;

  Author({
    this.name,
  });

  Author.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    return json;
  }
}
