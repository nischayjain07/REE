import 'package:execution_engine/NSL_Integration/SolutionDesign/model/cu.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/time_rights.dart';

class BasicGsiDataResult {
  int? status;
  String? message;
  GsiBasicData? result;

  BasicGsiDataResult({
    this.status,
    this.message,
    this.result,
  });

  BasicGsiDataResult.fromJson(Map<String, dynamic> json) {
    status = json['status'] as int?;
    message = json['message'] as String?;
    result = (json['result'] as Map<String,dynamic>?) != null ? GsiBasicData?.fromJson(json['result'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status'] = status;
    json['message'] = message;
    json['result'] = result?.toJson();
    return json;
  }
}

class GsiBasicData {
  List<SolutionLogic>? solutionLogic;
  bool? constrainedToReportingTree;
  bool? constrainedToTeam;
  bool? allowPreviouCUView;
  bool? isNavigableCu;
  bool? enableBot;
  bool? isMultiValueSensitive;
  bool? isGSILayerBasedRecursion;
  bool? preRecursiveConditionCheck;
  bool? disableSTEs;
  int? pathwaysCountFromCurrentCU;
  bool? isParallel;
  String? txnDataSaveMode;
  String? name;
  String? displayName;
  List<Agents>? agents;
  bool? isReserved;
  int? masterId;
  String? version;
  String? status;
  String? cuType;
  bool? isFaceted;
  int? id;
  List<TimeRights>? designTimeRights;
  List<TimeRights>? txnTimeRights;
  String? dsdMetadataId;
  String? dsdId;
  String? designUrl;

  GsiBasicData({
    this.solutionLogic,
    this.constrainedToReportingTree,
    this.constrainedToTeam,
    this.allowPreviouCUView,
    this.isNavigableCu,
    this.enableBot,
    this.isMultiValueSensitive,
    this.isGSILayerBasedRecursion,
    this.preRecursiveConditionCheck,
    this.disableSTEs,
    this.pathwaysCountFromCurrentCU,
    this.isParallel,
    this.txnDataSaveMode,
    this.name,
    this.displayName,
    this.agents,
    this.isReserved,
    this.masterId,
    this.version,
    this.status,
    this.cuType,
    this.isFaceted,
    this.id,
    this.designTimeRights,
    this.txnTimeRights,
    this.dsdMetadataId,
    this.dsdId,
    this.designUrl,
  });

  GsiBasicData.fromJson(Map<String, dynamic> json) {
    solutionLogic = (json['solutionLogic'] as List?)?.map((dynamic e) => SolutionLogic?.fromJson(e as Map<String,dynamic>)).toList();
    constrainedToReportingTree = json['constrainedToReportingTree'] as bool?;
    constrainedToTeam = json['constrainedToTeam'] as bool?;
    allowPreviouCUView = json['allowPreviouCUView'] as bool?;
    isNavigableCu = json['isNavigableCu'] as bool?;
    enableBot = json['enableBot'] as bool?;
    isMultiValueSensitive = json['isMultiValueSensitive'] as bool?;
    isGSILayerBasedRecursion = json['isGSILayerBasedRecursion'] as bool?;
    preRecursiveConditionCheck = json['preRecursiveConditionCheck'] as bool?;
    disableSTEs = json['disableSTEs'] as bool?;
    pathwaysCountFromCurrentCU = json['pathwaysCountFromCurrentCU'] as int?;
    isParallel = json['isParallel'] as bool?;
    txnDataSaveMode = json['txnDataSaveMode'] as String?;
    name = json['name'] as String?;
    displayName = json['displayName'] as String?;
    agents = (json['agents'] as List?)?.map((dynamic e) => Agents?.fromJson(e as Map<String,dynamic>)).toList();
    isReserved = json['isReserved'] as bool?;
    masterId = json['masterId'] as int?;
    version = json['version'] as String?;
    status = json['status'] as String?;
    cuType = json['cuType'] as String?;
    isFaceted = json['isFaceted'] as bool?;
    id = json['id'] as int?;
    designTimeRights = (json['designTimeRights'] as List?)?.map((dynamic e) => TimeRights?.fromJson(e as Map<String,dynamic>)).toList();
    txnTimeRights = (json['txnTimeRights'] as List?)?.map((dynamic e) => TimeRights?.fromJson(e as Map<String,dynamic>)).toList();
    dsdMetadataId = json['dsdMetadataId'] as String?;
    dsdId = json['dsdId'] as String?;
    designUrl = json['designUrl'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['solutionLogic'] = solutionLogic?.map((e) => e.toJson()).toList();
    json['constrainedToReportingTree'] = constrainedToReportingTree;
    json['constrainedToTeam'] = constrainedToTeam;
    json['allowPreviouCUView'] = allowPreviouCUView;
    json['isNavigableCu'] = isNavigableCu;
    json['enableBot'] = enableBot;
    json['isMultiValueSensitive'] = isMultiValueSensitive;
    json['isGSILayerBasedRecursion'] = isGSILayerBasedRecursion;
    json['preRecursiveConditionCheck'] = preRecursiveConditionCheck;
    json['disableSTEs'] = disableSTEs;
    json['pathwaysCountFromCurrentCU'] = pathwaysCountFromCurrentCU;
    json['isParallel'] = isParallel;
    json['txnDataSaveMode'] = txnDataSaveMode;
    json['name'] = name;
    json['displayName'] = displayName;
    json['agents'] = agents?.map((e) => e.toJson()).toList();
    json['isReserved'] = isReserved;
    json['masterId'] = masterId;
    json['version'] = version;
    json['status'] = status;
    json['cuType'] = cuType;
    json['isFaceted'] = isFaceted;
    json['id'] = id;
    json['designTimeRights'] = designTimeRights?.map((e) => e.toJson()).toList();
    json['txnTimeRights'] = txnTimeRights?.map((e) => e.toJson()).toList();
    json['dsdMetadataId'] = dsdMetadataId;
    json['dsdId'] = dsdId;
    json['designUrl'] = designUrl;
    return json;
  }
}

class SolutionLogic {
  String? cuType;
  CU? changeUnit;

  SolutionLogic({
    this.cuType,
    this.changeUnit,
  });

  SolutionLogic.fromJson(Map<String, dynamic> json) {
    cuType = json['TYPE'] as String?;
    changeUnit = (json['DATA'] as Map<String,dynamic>?) != null ? CU?.fromJson(json['DATA'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['TYPE'] = cuType;
    json['DATA'] = changeUnit?.toJson();
    return json;
  }
}

class Agents {
  String? agentType;

  Agents({
    this.agentType,
  });

  Agents.fromJson(Map<String, dynamic> json) {
    agentType = json['agentType'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['agentType'] = agentType;
    return json;
  }
}

// class DesignTimeRights {
//   bool? informationRight;
//   bool? decisionRight;
//   bool? executionRight;
//   int? rightHolderId;
//   String? rightHolderType;
//   String? rightHolderName;
//   bool? disableParentRoleAccess;

//   DesignTimeRights({
//     this.informationRight,
//     this.decisionRight,
//     this.executionRight,
//     this.rightHolderId,
//     this.rightHolderType,
//     this.rightHolderName,
//     this.disableParentRoleAccess,
//   });

//   DesignTimeRights.fromJson(Map<String, dynamic> json) {
//     informationRight = json['informationRight'] as bool?;
//     decisionRight = json['decisionRight'] as bool?;
//     executionRight = json['executionRight'] as bool?;
//     rightHolderId = json['rightHolderId'] as int?;
//     rightHolderType = json['rightHolderType'] as String?;
//     rightHolderName = json['rightHolderName'] as String?;
//     disableParentRoleAccess = json['disableParentRoleAccess'] as bool?;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['informationRight'] = informationRight;
//     json['decisionRight'] = decisionRight;
//     json['executionRight'] = executionRight;
//     json['rightHolderId'] = rightHolderId;
//     json['rightHolderType'] = rightHolderType;
//     json['rightHolderName'] = rightHolderName;
//     json['disableParentRoleAccess'] = disableParentRoleAccess;
//     return json;
//   }
// }

// class TxnTimeRights {
//   bool? informationRight;
//   bool? decisionRight;
//   bool? executionRight;
//   int? rightHolderId;
//   String? rightHolderType;
//   String? rightHolderName;
//   bool? disableParentRoleAccess;

//   TxnTimeRights({
//     this.informationRight,
//     this.decisionRight,
//     this.executionRight,
//     this.rightHolderId,
//     this.rightHolderType,
//     this.rightHolderName,
//     this.disableParentRoleAccess,
//   });

//   TxnTimeRights.fromJson(Map<String, dynamic> json) {
//     informationRight = json['informationRight'] as bool?;
//     decisionRight = json['decisionRight'] as bool?;
//     executionRight = json['executionRight'] as bool?;
//     rightHolderId = json['rightHolderId'] as int?;
//     rightHolderType = json['rightHolderType'] as String?;
//     rightHolderName = json['rightHolderName'] as String?;
//     disableParentRoleAccess = json['disableParentRoleAccess'] as bool?;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> json = <String, dynamic>{};
//     json['informationRight'] = informationRight;
//     json['decisionRight'] = decisionRight;
//     json['executionRight'] = executionRight;
//     json['rightHolderId'] = rightHolderId;
//     json['rightHolderType'] = rightHolderType;
//     json['rightHolderName'] = rightHolderName;
//     json['disableParentRoleAccess'] = disableParentRoleAccess;
//     return json;
//   }
// }