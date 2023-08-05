import 'package:execution_engine/NSL_Integration/SolutionDesign/model/layer.dart';
import 'package:execution_engine/NSL_Integration/model/nsl_attributes.dart';

class ExecuteChangeUnitResult {
  int? status;
  ChangeUnitTransaction? result;

  ExecuteChangeUnitResult({
    this.status,
    this.result,
  });

  ExecuteChangeUnitResult.fromJson(Map<String, dynamic> json) {
    status = json['status'] as int?;
    result = (json['result'] as Map<String, dynamic>?) != null
        ? ChangeUnitTransaction.fromJson(json['result'] as Map<String, dynamic>)
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status'] = status;
    json['result'] = result?.toJson();
    return json;
  }
}

class ChangeUnitTransaction {
  CurrentCU? currentCU;
  String? transId;
  int? gsiId;
  int? gsiMasterId;
  bool? enablePushback;
  bool? enableComments;

  ChangeUnitTransaction({
    this.currentCU,
    this.transId,
    this.gsiId,
    this.gsiMasterId,
    this.enablePushback,
    this.enableComments,
  });

  ChangeUnitTransaction.fromJson(Map<String, dynamic> json) {
    currentCU = (json['currentCU'] as Map<String, dynamic>?) != null
        ? CurrentCU.fromJson(json['currentCU'] as Map<String, dynamic>)
        : null;
    transId = json['transId'] as String?;
    gsiId = json['gsiId'] as int?;
    gsiMasterId = json['gsiMasterId'] as int?;
    enablePushback = json['enablePushback'] as bool?;
    enableComments = json['enableComments'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['currentCU'] = currentCU?.toJson();
    json['transId'] = transId;
    json['gsiId'] = gsiId;
    json['gsiMasterId'] = gsiMasterId;
    json['enablePushback'] = enablePushback;
    json['enableComments'] = enableComments;
    return json;
  }
}

class CurrentCU {
  int? id;
  int? index;
  String? contextualId;
  String? cuType;
  String? name;
  String? displayName;
  String? description;
  List<dynamic>? eventCUList;
  List<dynamic>? tCUConditionalPotentiality;
  List<dynamic>? tCUConditionalPotentialityNames;
  int? pathwaysCountFromCurrentCU;
  List<Layer>? layers;
  String? tCUsentenceName;
  int? ownerId;
  int? masterId;
  bool? isReserved;
  String? reservedCUType;
  bool? subTransactionalCU;
  bool? disableSTEs;

  CurrentCU({
    this.id,
    this.index,
    this.contextualId,
    this.cuType,
    this.name,
    this.displayName,
    this.description,
    this.eventCUList,
    this.tCUConditionalPotentiality,
    this.tCUConditionalPotentialityNames,
    this.pathwaysCountFromCurrentCU,
    this.layers,
    this.tCUsentenceName,
    this.ownerId,
    this.masterId,
    this.isReserved,
    this.reservedCUType,
    this.subTransactionalCU,
    this.disableSTEs,
  });

  CurrentCU.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    index = json['index'] as int?;
    contextualId = json['contextualId'] as String?;
    cuType = json['cuType'] as String?;
    name = json['name'] as String?;
    displayName = json['displayName'] as String?;
    description = json['description'] as String?;
    eventCUList = json['eventCUList'] as List?;
    tCUConditionalPotentiality = json['tCUConditionalPotentiality'] as List?;
    tCUConditionalPotentialityNames = json['tCUConditionalPotentialityNames'] as List?;
    pathwaysCountFromCurrentCU = json['pathwaysCountFromCurrentCU'] as int?;
    layers = (json['layers'] as List?)?.map((dynamic e) => Layer.fromJson(e as Map<String, dynamic>)).toList();
    tCUsentenceName = json['tCUsentenceName'] as String?;
    ownerId = json['ownerId'] as int?;
    masterId = json['masterId'] as int?;
    isReserved = json['isReserved'] as bool?;
    reservedCUType = json['reservedCUType'] as String?;
    subTransactionalCU = json['subTransactionalCU'] as bool?;
    disableSTEs = json['disableSTEs'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['index'] = index;
    json['contextualId'] = contextualId;
    json['cuType'] = cuType;
    json['name'] = name;
    json['displayName'] = displayName;
    json['description'] = description;
    json['eventCUList'] = eventCUList;
    json['tCUConditionalPotentiality'] = tCUConditionalPotentiality;
    json['tCUConditionalPotentialityNames'] = tCUConditionalPotentialityNames;
    json['pathwaysCountFromCurrentCU'] = pathwaysCountFromCurrentCU;
    json['layers'] = layers?.map((e) => e.toJson()).toList();
    json['tCUsentenceName'] = tCUsentenceName;
    json['ownerId'] = ownerId;
    json['masterId'] = masterId;
    json['isReserved'] = isReserved;
    json['reservedCUType'] = reservedCUType;
    json['subTransactionalCU'] = subTransactionalCU;
    json['disableSTEs'] = disableSTEs;
    return json;
  }
}

class EntityList {
  String? name;
  String? displayName;
  int? id;
  int? masterId;
  int? slot;
  int? txnRecordId;
  String? type;
  String? dataType;
  bool? isMulti;
  List<NslAttributes>? nslAttributes;
  bool? isInPotentiality;
  bool? isDisabled;
  bool? isHidden;
  bool? isOptional;
  bool? isNegative;
  int? ownerId;
  bool? isTemplate;
  bool? isPlaceholder;

  EntityList({
    this.name,
    this.displayName,
    this.id,
    this.masterId,
    this.slot,
    this.txnRecordId,
    this.type,
    this.dataType,
    this.isMulti,
    this.nslAttributes,
    this.isInPotentiality,
    this.isDisabled,
    this.isHidden,
    this.isOptional,
    this.isNegative,
    this.ownerId,
    this.isTemplate,
    this.isPlaceholder,
  });

  EntityList.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    displayName = json['displayName'] as String?;
    id = json['id'] as int?;
    masterId = json['masterId'] as int?;
    slot = json['slot'] as int?;
    txnRecordId = json['txnRecordId'] as int?;
    type = json['type'] as String?;
    dataType = json['dataType'] as String?;
    isMulti = json['isMulti'] as bool?;
    nslAttributes = (json['nslAttributes'] as List?)
        ?.map((dynamic e) => NslAttributes.fromJson(e as Map<String, dynamic>))
        .toList();
    isInPotentiality = json['isInPotentiality'] as bool?;
    isDisabled = json['isDisabled'] as bool?;
    isHidden = json['isHidden'] as bool?;
    isOptional = json['isOptional'] as bool?;
    isNegative = json['isNegative'] as bool?;
    ownerId = json['ownerId'] as int?;
    isTemplate = json['isTemplate'] as bool?;
    isPlaceholder = json['isPlaceholder'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['displayName'] = displayName;
    json['id'] = id;
    json['masterId'] = masterId;
    json['slot'] = slot;
    json['txnRecordId'] = txnRecordId;
    json['type'] = type;
    json['dataType'] = dataType;
    json['isMulti'] = isMulti;
    json['nslAttributes'] = nslAttributes?.map((e) => e.toJson()).toList();
    json['isInPotentiality'] = isInPotentiality;
    json['isDisabled'] = isDisabled;
    json['isHidden'] = isHidden;
    json['isOptional'] = isOptional;
    json['isNegative'] = isNegative;
    json['ownerId'] = ownerId;
    json['isTemplate'] = isTemplate;
    json['isPlaceholder'] = isPlaceholder;
    return json;
  }
}
