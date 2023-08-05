class GSIResult {
  int? status;
  String? message;
  GSI? result;

  GSIResult({
    this.status,
    this.message,
    this.result,
  });

  GSIResult.fromJson(Map<String, dynamic> json) {
    status = json['status'] as int?;
    message = json['message'] as String?;
    result = (json['result'] as Map<String,dynamic>?) != null ? GSI.fromJson(json['result'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['status'] = status;
    json['message'] = message;
    json['result'] = result?.toJson();
    return json;
  }
}

class GSI {
  List<SolutionLogic>? solutionLogic;
  bool? constrainedToReportingTree;
  bool? constrainedToTeam;
  bool? allowPreviouCUView;
  bool? isNavigableCu;
  bool? enableBot;
  bool? disableSTEs;
  bool? isGSILayerBasedRecursion;
  bool? preRecursiveConditionCheck;
  String? condition;
  String? conditionName;
  int? index;
  List<dynamic>? dcd;
  List<dynamic>? nextTriggerSet;
  EntityDesignRights? entityDesignRights;
  AttributeDesignRights? attributeDesignRights;
  bool? isParallel;
  List<dynamic>? exceptionCUList;
  EntityTransactionRights? entityTransactionRights;
  int? pathwaysCountFromCurrentCU;
  List<dynamic>? eventCUList;
  String? cuType;
  AttributeTransactionRights? attributeTransactionRights;
  List<dynamic>? mindCUList;
  String? dsdId;
  int? id;
  List<dynamic>? layers;
  List<dynamic>? gsiList;
  bool? isFaceted;
  List<Agents>? agents;
  bool? isReserved;
  CuSystemProperties? cuSystemProperties;
  int? ownerId;
  List<DesignTimeRights>? designTimeRights;
  List<TxnTimeRights>? txnTimeRights;
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

  GSI({
    this.solutionLogic,
    this.constrainedToReportingTree,
    this.constrainedToTeam,
    this.allowPreviouCUView,
    this.isNavigableCu,
    this.enableBot,
    this.disableSTEs,
    this.isGSILayerBasedRecursion,
    this.preRecursiveConditionCheck,
    this.condition,
    this.conditionName,
    this.index,
    this.dcd,
    this.nextTriggerSet,
    this.entityDesignRights,
    this.attributeDesignRights,
    this.isParallel,
    this.exceptionCUList,
    this.entityTransactionRights,
    this.pathwaysCountFromCurrentCU,
    this.eventCUList,
    this.cuType,
    this.attributeTransactionRights,
    this.mindCUList,
    this.dsdId,
    this.id,
    this.layers,
    this.gsiList,
    this.isFaceted,
    this.agents,
    this.isReserved,
    this.cuSystemProperties,
    this.ownerId,
    this.designTimeRights,
    this.txnTimeRights,
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
  });

  GSI.fromJson(Map<String, dynamic> json) {
    solutionLogic = (json['solutionLogic'] as List?)?.map((dynamic e) => SolutionLogic.fromJson(e as Map<String,dynamic>)).toList();
    constrainedToReportingTree = json['constrainedToReportingTree'] as bool?;
    constrainedToTeam = json['constrainedToTeam'] as bool?;
    allowPreviouCUView = json['allowPreviouCUView'] as bool?;
    isNavigableCu = json['isNavigableCu'] as bool?;
    enableBot = json['enableBot'] as bool?;
    disableSTEs = json['disableSTEs'] as bool?;
    isGSILayerBasedRecursion = json['isGSILayerBasedRecursion'] as bool?;
    preRecursiveConditionCheck = json['preRecursiveConditionCheck'] as bool?;
    condition = json['condition'] as String?;
    conditionName = json['conditionName'] as String?;
    index = json['index'] as int?;
    dcd = json['dcd'] as List?;
    nextTriggerSet = json['nextTriggerSet'] as List?;
    entityDesignRights = (json['entityDesignRights'] as Map<String,dynamic>?) != null ? EntityDesignRights.fromJson(json['entityDesignRights'] as Map<String,dynamic>) : null;
    attributeDesignRights = (json['attributeDesignRights'] as Map<String,dynamic>?) != null ? AttributeDesignRights.fromJson(json['attributeDesignRights'] as Map<String,dynamic>) : null;
    isParallel = json['isParallel'] as bool?;
    exceptionCUList = json['exceptionCUList'] as List?;
    entityTransactionRights = (json['entityTransactionRights'] as Map<String,dynamic>?) != null ? EntityTransactionRights.fromJson(json['entityTransactionRights'] as Map<String,dynamic>) : null;
    pathwaysCountFromCurrentCU = json['pathwaysCountFromCurrentCU'] as int?;
    eventCUList = json['eventCUList'] as List?;
    cuType = json['cuType'] as String?;
    attributeTransactionRights = (json['attributeTransactionRights'] as Map<String,dynamic>?) != null ? AttributeTransactionRights.fromJson(json['attributeTransactionRights'] as Map<String,dynamic>) : null;
    mindCUList = json['mindCUList'] as List?;
    dsdId = json['dsdId'] as String?;
    id = json['id'] as int?;
    layers = json['layers'] as List?;
    gsiList = json['gsiList'] as List?;
    isFaceted = json['isFaceted'] as bool?;
    agents = (json['agents'] as List?)?.map((dynamic e) => Agents.fromJson(e as Map<String,dynamic>)).toList();
    isReserved = json['isReserved'] as bool?;
    cuSystemProperties = (json['cuSystemProperties'] as Map<String,dynamic>?) != null ? CuSystemProperties.fromJson(json['cuSystemProperties'] as Map<String,dynamic>) : null;
    ownerId = json['ownerId'] as int?;
    designTimeRights = (json['designTimeRights'] as List?)?.map((dynamic e) => DesignTimeRights.fromJson(e as Map<String,dynamic>)).toList();
    txnTimeRights = (json['txnTimeRights'] as List?)?.map((dynamic e) => TxnTimeRights.fromJson(e as Map<String,dynamic>)).toList();
    tenant = (json['tenant'] as Map<String,dynamic>?) != null ? Tenant.fromJson(json['tenant'] as Map<String,dynamic>) : null;
    dsdMetadataId = json['dsdMetadataId'] as String?;
    exportDesignSystem = json['exportDesignSystem'] as bool?;
    naqResultsForBET = (json['naqResultsForBET'] as Map<String,dynamic>?) != null ? NaqResultsForBET.fromJson(json['naqResultsForBET'] as Map<String,dynamic>) : null;
    name = json['name'] as String?;
    displayName = json['displayName'] as String?;
    description = json['description'] as String?;
    source = json['source'] as String?;
    masterId = json['masterId'] as int?;
    version = json['version'] as String?;
    status = json['status'] as String?;
    isNameUpdated = json['isNameUpdated'] as bool?;
    ontology = (json['ontology'] as List?)?.map((dynamic e) => Ontology.fromJson(e as Map<String,dynamic>)).toList();
    attachments = json['attachments'] as List?;
    keywords = (json['keywords'] as List?)?.map((dynamic e) => e as String).toList();
    publisher = (json['publisher'] as Map<String,dynamic>?) != null ? Publisher.fromJson(json['publisher'] as Map<String,dynamic>) : null;
    author = (json['author'] as Map<String,dynamic>?) != null ? Author.fromJson(json['author'] as Map<String,dynamic>) : null;
    minAge = json['minAge'] as int?;
    maxAge = json['maxAge'] as int?;
    editable = json['editable'] as bool?;
    approvalStatus = json['approvalStatus'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['solutionLogic'] = solutionLogic?.map((e) => e.toJson()).toList();
    json['constrainedToReportingTree'] = constrainedToReportingTree;
    json['constrainedToTeam'] = constrainedToTeam;
    json['allowPreviouCUView'] = allowPreviouCUView;
    json['isNavigableCu'] = isNavigableCu;
    json['enableBot'] = enableBot;
    json['disableSTEs'] = disableSTEs;
    json['isGSILayerBasedRecursion'] = isGSILayerBasedRecursion;
    json['preRecursiveConditionCheck'] = preRecursiveConditionCheck;
    json['condition'] = condition;
    json['conditionName'] = conditionName;
    json['index'] = index;
    json['dcd'] = dcd;
    json['nextTriggerSet'] = nextTriggerSet;
    json['entityDesignRights'] = entityDesignRights?.toJson();
    json['attributeDesignRights'] = attributeDesignRights?.toJson();
    json['isParallel'] = isParallel;
    json['exceptionCUList'] = exceptionCUList;
    json['entityTransactionRights'] = entityTransactionRights?.toJson();
    json['pathwaysCountFromCurrentCU'] = pathwaysCountFromCurrentCU;
    json['eventCUList'] = eventCUList;
    json['cuType'] = cuType;
    json['attributeTransactionRights'] = attributeTransactionRights?.toJson();
    json['mindCUList'] = mindCUList;
    json['dsdId'] = dsdId;
    json['id'] = id;
    json['layers'] = layers;
    json['gsiList'] = gsiList;
    json['isFaceted'] = isFaceted;
    json['agents'] = agents?.map((e) => e.toJson()).toList();
    json['isReserved'] = isReserved;
    json['cuSystemProperties'] = cuSystemProperties?.toJson();
    json['ownerId'] = ownerId;
    json['designTimeRights'] = designTimeRights?.map((e) => e.toJson()).toList();
    json['txnTimeRights'] = txnTimeRights?.map((e) => e.toJson()).toList();
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
    return json;
  }
}

class SolutionLogic {
  int? index;
  List<Dcd>? dcd;
  List<NextTriggerSet>? nextTriggerSet;
  EntityDesignRights? entityDesignRights;
  int? referencedChangeUnit;
  AttributeDesignRights? attributeDesignRights;
  String? dsdReferencedChangeUnit;
  bool? isParallel;
  List<dynamic>? exceptionCUList;
  EntityTransactionRights? entityTransactionRights;
  List<dynamic>? tCUConditionalPotentiality;
  int? pathwaysCountFromCurrentCU;
  NestedOutgoingDCDs? nestedOutgoingDCDs;
  List<dynamic>? eventCUList;
  List<dynamic>? tCUConditionalPotentialityNames;
  String? cuType;
  AttributeTransactionRights? attributeTransactionRights;
  List<dynamic>? mindCUList;
  String? tCUsentenceName;
  List<TriggerCULayers>? triggerCULayers;
  String? dsdId;
  int? id;
  List<Layers>? layers;
  List<dynamic>? gsiList;
  bool? isFaceted;
  List<Agents>? agents;
  List<dynamic>? membershipList;
  bool? isReserved;
  String? reservedCUType;
  PropertiesMap? propertiesMap;
  CuSystemProperties? cuSystemProperties;
  int? ownerId;
  List<DesignTimeRights>? designTimeRights;
  List<TxnTimeRights>? txnTimeRights;
  String? querySentence;
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
  List<dynamic>? attachments;
  int? minAge;
  int? maxAge;
  bool? editable;
  String? approvalStatus;

  SolutionLogic({
    this.index,
    this.dcd,
    this.nextTriggerSet,
    this.entityDesignRights,
    this.referencedChangeUnit,
    this.attributeDesignRights,
    this.dsdReferencedChangeUnit,
    this.isParallel,
    this.exceptionCUList,
    this.entityTransactionRights,
    this.tCUConditionalPotentiality,
    this.pathwaysCountFromCurrentCU,
    this.nestedOutgoingDCDs,
    this.eventCUList,
    this.tCUConditionalPotentialityNames,
    this.cuType,
    this.attributeTransactionRights,
    this.mindCUList,
    this.tCUsentenceName,
    this.triggerCULayers,
    this.dsdId,
    this.id,
    this.layers,
    this.gsiList,
    this.isFaceted,
    this.agents,
    this.membershipList,
    this.isReserved,
    this.reservedCUType,
    this.propertiesMap,
    this.cuSystemProperties,
    this.ownerId,
    this.designTimeRights,
    this.txnTimeRights,
    this.querySentence,
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
    this.attachments,
    this.minAge,
    this.maxAge,
    this.editable,
    this.approvalStatus,
  });

  SolutionLogic.fromJson(Map<String, dynamic> json) {
    index = json['index'] as int?;
    dcd = (json['dcd'] as List?)?.map((dynamic e) => Dcd.fromJson(e as Map<String,dynamic>)).toList();
    nextTriggerSet = (json['nextTriggerSet'] as List?)?.map((dynamic e) => NextTriggerSet.fromJson(e as Map<String,dynamic>)).toList();
    entityDesignRights = (json['entityDesignRights'] as Map<String,dynamic>?) != null ? EntityDesignRights.fromJson(json['entityDesignRights'] as Map<String,dynamic>) : null;
    referencedChangeUnit = json['referencedChangeUnit'] as int?;
    attributeDesignRights = (json['attributeDesignRights'] as Map<String,dynamic>?) != null ? AttributeDesignRights.fromJson(json['attributeDesignRights'] as Map<String,dynamic>) : null;
    dsdReferencedChangeUnit = json['dsdReferencedChangeUnit'] as String?;
    isParallel = json['isParallel'] as bool?;
    exceptionCUList = json['exceptionCUList'] as List?;
    entityTransactionRights = (json['entityTransactionRights'] as Map<String,dynamic>?) != null ? EntityTransactionRights.fromJson(json['entityTransactionRights'] as Map<String,dynamic>) : null;
    tCUConditionalPotentiality = json['tCUConditionalPotentiality'] as List?;
    pathwaysCountFromCurrentCU = json['pathwaysCountFromCurrentCU'] as int?;
    nestedOutgoingDCDs = (json['nestedOutgoingDCDs'] as Map<String,dynamic>?) != null ? NestedOutgoingDCDs.fromJson(json['nestedOutgoingDCDs'] as Map<String,dynamic>) : null;
    eventCUList = json['eventCUList'] as List?;
    tCUConditionalPotentialityNames = json['tCUConditionalPotentialityNames'] as List?;
    cuType = json['cuType'] as String?;
    attributeTransactionRights = (json['attributeTransactionRights'] as Map<String,dynamic>?) != null ? AttributeTransactionRights.fromJson(json['attributeTransactionRights'] as Map<String,dynamic>) : null;
    mindCUList = json['mindCUList'] as List?;
    tCUsentenceName = json['tCUsentenceName'] as String?;
    triggerCULayers = (json['triggerCULayers'] as List?)?.map((dynamic e) => TriggerCULayers.fromJson(e as Map<String,dynamic>)).toList();
    dsdId = json['dsdId'] as String?;
    id = json['id'] as int?;
    layers = (json['layers'] as List?)?.map((dynamic e) => Layers.fromJson(e as Map<String,dynamic>)).toList();
    gsiList = json['gsiList'] as List?;
    isFaceted = json['isFaceted'] as bool?;
    agents = (json['agents'] as List?)?.map((dynamic e) => Agents.fromJson(e as Map<String,dynamic>)).toList();
    membershipList = json['membershipList'] as List?;
    isReserved = json['isReserved'] as bool?;
    reservedCUType = json['reservedCUType'] as String?;
    propertiesMap = (json['propertiesMap'] as Map<String,dynamic>?) != null ? PropertiesMap.fromJson(json['propertiesMap'] as Map<String,dynamic>) : null;
    cuSystemProperties = (json['cuSystemProperties'] as Map<String,dynamic>?) != null ? CuSystemProperties.fromJson(json['cuSystemProperties'] as Map<String,dynamic>) : null;
    ownerId = json['ownerId'] as int?;
    designTimeRights = (json['designTimeRights'] as List?)?.map((dynamic e) => DesignTimeRights.fromJson(e as Map<String,dynamic>)).toList();
    txnTimeRights = (json['txnTimeRights'] as List?)?.map((dynamic e) => TxnTimeRights.fromJson(e as Map<String,dynamic>)).toList();
    querySentence = json['querySentence'] as String?;
    dsdMetadataId = json['dsdMetadataId'] as String?;
    exportDesignSystem = json['exportDesignSystem'] as bool?;
    naqResultsForBET = (json['naqResultsForBET'] as Map<String,dynamic>?) != null ? NaqResultsForBET.fromJson(json['naqResultsForBET'] as Map<String,dynamic>) : null;
    name = json['name'] as String?;
    displayName = json['displayName'] as String?;
    description = json['description'] as String?;
    source = json['source'] as String?;
    masterId = json['masterId'] as int?;
    version = json['version'] as String?;
    status = json['status'] as String?;
    isNameUpdated = json['isNameUpdated'] as bool?;
    attachments = json['attachments'] as List?;
    minAge = json['minAge'] as int?;
    maxAge = json['maxAge'] as int?;
    editable = json['editable'] as bool?;
    approvalStatus = json['approvalStatus'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['index'] = index;
    json['dcd'] = dcd?.map((e) => e.toJson()).toList();
    json['nextTriggerSet'] = nextTriggerSet?.map((e) => e.toJson()).toList();
    json['entityDesignRights'] = entityDesignRights?.toJson();
    json['referencedChangeUnit'] = referencedChangeUnit;
    json['attributeDesignRights'] = attributeDesignRights?.toJson();
    json['dsdReferencedChangeUnit'] = dsdReferencedChangeUnit;
    json['isParallel'] = isParallel;
    json['exceptionCUList'] = exceptionCUList;
    json['entityTransactionRights'] = entityTransactionRights?.toJson();
    json['tCUConditionalPotentiality'] = tCUConditionalPotentiality;
    json['pathwaysCountFromCurrentCU'] = pathwaysCountFromCurrentCU;
    json['nestedOutgoingDCDs'] = nestedOutgoingDCDs?.toJson();
    json['eventCUList'] = eventCUList;
    json['tCUConditionalPotentialityNames'] = tCUConditionalPotentialityNames;
    json['cuType'] = cuType;
    json['attributeTransactionRights'] = attributeTransactionRights?.toJson();
    json['mindCUList'] = mindCUList;
    json['tCUsentenceName'] = tCUsentenceName;
    json['triggerCULayers'] = triggerCULayers?.map((e) => e.toJson()).toList();
    json['dsdId'] = dsdId;
    json['id'] = id;
    json['layers'] = layers?.map((e) => e.toJson()).toList();
    json['gsiList'] = gsiList;
    json['isFaceted'] = isFaceted;
    json['agents'] = agents?.map((e) => e.toJson()).toList();
    json['membershipList'] = membershipList;
    json['isReserved'] = isReserved;
    json['reservedCUType'] = reservedCUType;
    json['propertiesMap'] = propertiesMap?.toJson();
    json['cuSystemProperties'] = cuSystemProperties?.toJson();
    json['ownerId'] = ownerId;
    json['designTimeRights'] = designTimeRights?.map((e) => e.toJson()).toList();
    json['txnTimeRights'] = txnTimeRights?.map((e) => e.toJson()).toList();
    json['querySentence'] = querySentence;
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
    json['attachments'] = attachments;
    json['minAge'] = minAge;
    json['maxAge'] = maxAge;
    json['editable'] = editable;
    json['approvalStatus'] = approvalStatus;
    return json;
  }
}

class Dcd {
  String? sourceContextualId;
  String? sourceContextualName;
  String? targetContextualId;
  String? targetContextualName;
  String? formula;
  String? formulaName;
  String? event;
  String? multiValueMode;
  bool? isInDCDGroup;
  int? id;
  String? guid;
  int? ownerId;
  int? createdAt;
  int? createdBy;
  int? updatedAt;
  int? updatedBy;

  Dcd({
    this.sourceContextualId,
    this.sourceContextualName,
    this.targetContextualId,
    this.targetContextualName,
    this.formula,
    this.formulaName,
    this.event,
    this.multiValueMode,
    this.isInDCDGroup,
    this.id,
    this.guid,
    this.ownerId,
    this.createdAt,
    this.createdBy,
    this.updatedAt,
    this.updatedBy,
  });

  Dcd.fromJson(Map<String, dynamic> json) {
    sourceContextualId = json['sourceContextualId'] as String?;
    sourceContextualName = json['sourceContextualName'] as String?;
    targetContextualId = json['targetContextualId'] as String?;
    targetContextualName = json['targetContextualName'] as String?;
    formula = json['formula'] as String?;
    formulaName = json['formulaName'] as String?;
    event = json['event'] as String?;
    multiValueMode = json['multiValueMode'] as String?;
    isInDCDGroup = json['isInDCDGroup'] as bool?;
    id = json['id'] as int?;
    guid = json['guid'] as String?;
    ownerId = json['ownerId'] as int?;
    createdAt = json['createdAt'] as int?;
    createdBy = json['createdBy'] as int?;
    updatedAt = json['updatedAt'] as int?;
    updatedBy = json['updatedBy'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['sourceContextualId'] = sourceContextualId;
    json['sourceContextualName'] = sourceContextualName;
    json['targetContextualId'] = targetContextualId;
    json['targetContextualName'] = targetContextualName;
    json['formula'] = formula;
    json['formulaName'] = formulaName;
    json['event'] = event;
    json['multiValueMode'] = multiValueMode;
    json['isInDCDGroup'] = isInDCDGroup;
    json['id'] = id;
    json['guid'] = guid;
    json['ownerId'] = ownerId;
    json['createdAt'] = createdAt;
    json['createdBy'] = createdBy;
    json['updatedAt'] = updatedAt;
    json['updatedBy'] = updatedBy;
    return json;
  }
}

class NextTriggerSet {
  int? index;
  int? nextCUId;
  String? dsdNextCUId;
  String? nextCUName;
  bool? isParallel;

  NextTriggerSet({
    this.index,
    this.nextCUId,
    this.dsdNextCUId,
    this.nextCUName,
    this.isParallel,
  });

  NextTriggerSet.fromJson(Map<String, dynamic> json) {
    index = json['index'] as int?;
    nextCUId = json['nextCUId'] as int?;
    dsdNextCUId = json['dsdNextCUId'] as String?;
    nextCUName = json['nextCUName'] as String?;
    isParallel = json['isParallel'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['index'] = index;
    json['nextCUId'] = nextCUId;
    json['dsdNextCUId'] = dsdNextCUId;
    json['nextCUName'] = nextCUName;
    json['isParallel'] = isParallel;
    return json;
  }
}

class EntityDesignRights {
  

  EntityDesignRights();

  EntityDesignRights.fromJson(Map<String, dynamic> json) {
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    
    return json;
  }
}

class AttributeDesignRights {
  

  AttributeDesignRights();

  AttributeDesignRights.fromJson(Map<String, dynamic> json) {
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    
    return json;
  }
}

class EntityTransactionRights {
  

  EntityTransactionRights();

  EntityTransactionRights.fromJson(Map<String, dynamic> json) {
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    
    return json;
  }
}

class NestedOutgoingDCDs {
  

  NestedOutgoingDCDs();

  NestedOutgoingDCDs.fromJson(Map<String, dynamic> json) {
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    
    return json;
  }
}

class AttributeTransactionRights {
  

  AttributeTransactionRights();

  AttributeTransactionRights.fromJson(Map<String, dynamic> json) {
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    
    return json;
  }
}

class TriggerCULayers {
  List<ParticipatingItems>? participatingItems;
  NaqResultsForBET? naqResultsForBET;
  bool? overrideSTEbehavior;
  String? type;

  TriggerCULayers({
    this.participatingItems,
    this.naqResultsForBET,
    this.overrideSTEbehavior,
    this.type,
  });

  TriggerCULayers.fromJson(Map<String, dynamic> json) {
    participatingItems = (json['participatingItems'] as List?)?.map((dynamic e) => ParticipatingItems.fromJson(e as Map<String,dynamic>)).toList();
    naqResultsForBET = (json['naqResultsForBET'] as Map<String,dynamic>?) != null ? NaqResultsForBET.fromJson(json['naqResultsForBET'] as Map<String,dynamic>) : null;
    overrideSTEbehavior = json['overrideSTEbehavior'] as bool?;
    type = json['type'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['participatingItems'] = participatingItems?.map((e) => e.toJson()).toList();
    json['naqResultsForBET'] = naqResultsForBET?.toJson();
    json['overrideSTEbehavior'] = overrideSTEbehavior;
    json['type'] = type;
    return json;
  }
}

class ParticipatingItems {
  int? id;
  bool? isMultiValue;
  Item? item;
  bool? isInPotentiality;
  bool? triggerConditionalPotentiality;
  bool? isPlaceholder;

  ParticipatingItems({
    this.id,
    this.isMultiValue,
    this.item,
    this.isInPotentiality,
    this.triggerConditionalPotentiality,
    this.isPlaceholder,
  });

  ParticipatingItems.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    isMultiValue = json['isMultiValue'] as bool?;
    item = (json['item'] as Map<String,dynamic>?) != null ? Item.fromJson(json['item'] as Map<String,dynamic>) : null;
    isInPotentiality = json['isInPotentiality'] as bool?;
    triggerConditionalPotentiality = json['triggerConditionalPotentiality'] as bool?;
    isPlaceholder = json['isPlaceholder'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['isMultiValue'] = isMultiValue;
    json['item'] = item?.toJson();
    json['isInPotentiality'] = isInPotentiality;
    json['triggerConditionalPotentiality'] = triggerConditionalPotentiality;
    json['isPlaceholder'] = isPlaceholder;
    return json;
  }
}

class Item {
  String? tYPE;
  DATA? dATA;

  Item({
    this.tYPE,
    this.dATA,
  });

  Item.fromJson(Map<String, dynamic> json) {
    tYPE = json['TYPE'] as String?;
    dATA = (json['DATA'] as Map<String,dynamic>?) != null ? DATA.fromJson(json['DATA'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['TYPE'] = tYPE;
    json['DATA'] = dATA?.toJson();
    return json;
  }
}

class DATA {
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

  DATA({
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
  });

  DATA.fromJson(Map<String, dynamic> json) {
    dsdId = json['dsdId'] as String?;
    id = json['id'] as int?;
    isMasterData = json['isMasterData'] as bool?;
    nslAttributes = (json['nslAttributes'] as List?)?.map((dynamic e) => NslAttributes.fromJson(e as Map<String,dynamic>)).toList();
    isReserved = json['isReserved'] as bool?;
    ownerId = json['ownerId'] as int?;
    canDownload = json['canDownload'] as bool?;
    tenant = (json['tenant'] as Map<String,dynamic>?) != null ? Tenant.fromJson(json['tenant'] as Map<String,dynamic>) : null;
    dsdMetadataId = json['dsdMetadataId'] as String?;
    exportDesignSystem = json['exportDesignSystem'] as bool?;
    naqResultsForBET = (json['naqResultsForBET'] as Map<String,dynamic>?) != null ? NaqResultsForBET.fromJson(json['naqResultsForBET'] as Map<String,dynamic>) : null;
    name = json['name'] as String?;
    displayName = json['displayName'] as String?;
    description = json['description'] as String?;
    source = json['source'] as String?;
    masterId = json['masterId'] as int?;
    version = json['version'] as String?;
    status = json['status'] as String?;
    isNameUpdated = json['isNameUpdated'] as bool?;
    ontology = (json['ontology'] as List?)?.map((dynamic e) => Ontology.fromJson(e as Map<String,dynamic>)).toList();
    attachments = json['attachments'] as List?;
    keywords = (json['keywords'] as List?)?.map((dynamic e) => e as String).toList();
    publisher = (json['publisher'] as Map<String,dynamic>?) != null ? Publisher.fromJson(json['publisher'] as Map<String,dynamic>) : null;
    author = (json['author'] as Map<String,dynamic>?) != null ? Author.fromJson(json['author'] as Map<String,dynamic>) : null;
    minAge = json['minAge'] as int?;
    maxAge = json['maxAge'] as int?;
    editable = json['editable'] as bool?;
    approvalStatus = json['approvalStatus'] as String?;
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
    return json;
  }
}

class NslAttributes {
  String? dsdId;
  int? id;
  AttributeType? attributeType;
  List<dynamic>? constraints;
  bool? isReserved;
  NslAttributeProperties? nslAttributeProperties;
  bool? isInPotentiality;
  bool? triggerConditionalPotentiality;
  List<String>? contextualId;
  int? ownerId;
  bool? canDownload;
  bool? exportDesignSystem;
  NaqResultsForBET? naqResultsForBET;
  String? name;
  String? displayName;
  String? source;
  String? status;
  bool? isNameUpdated;
  List<dynamic>? attachments;
  int? minAge;
  int? maxAge;
  bool? editable;
  String? approvalStatus;

  NslAttributes({
    this.dsdId,
    this.id,
    this.attributeType,
    this.constraints,
    this.isReserved,
    this.nslAttributeProperties,
    this.isInPotentiality,
    this.triggerConditionalPotentiality,
    this.contextualId,
    this.ownerId,
    this.canDownload,
    this.exportDesignSystem,
    this.naqResultsForBET,
    this.name,
    this.displayName,
    this.source,
    this.status,
    this.isNameUpdated,
    this.attachments,
    this.minAge,
    this.maxAge,
    this.editable,
    this.approvalStatus,
  });

  NslAttributes.fromJson(Map<String, dynamic> json) {
    dsdId = json['dsdId'] as String?;
    id = json['id'] as int?;
    attributeType = (json['attributeType'] as Map<String,dynamic>?) != null ? AttributeType.fromJson(json['attributeType'] as Map<String,dynamic>) : null;
    constraints = json['constraints'] as List?;
    isReserved = json['isReserved'] as bool?;
    nslAttributeProperties = (json['nslAttributeProperties'] as Map<String,dynamic>?) != null ? NslAttributeProperties.fromJson(json['nslAttributeProperties'] as Map<String,dynamic>) : null;
    isInPotentiality = json['isInPotentiality'] as bool?;
    triggerConditionalPotentiality = json['triggerConditionalPotentiality'] as bool?;
    contextualId = (json['contextualId'] as List?)?.map((dynamic e) => e as String).toList();
    ownerId = json['ownerId'] as int?;
    canDownload = json['canDownload'] as bool?;
    exportDesignSystem = json['exportDesignSystem'] as bool?;
    naqResultsForBET = (json['naqResultsForBET'] as Map<String,dynamic>?) != null ? NaqResultsForBET.fromJson(json['naqResultsForBET'] as Map<String,dynamic>) : null;
    name = json['name'] as String?;
    displayName = json['displayName'] as String?;
    source = json['source'] as String?;
    status = json['status'] as String?;
    isNameUpdated = json['isNameUpdated'] as bool?;
    attachments = json['attachments'] as List?;
    minAge = json['minAge'] as int?;
    maxAge = json['maxAge'] as int?;
    editable = json['editable'] as bool?;
    approvalStatus = json['approvalStatus'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['dsdId'] = dsdId;
    json['id'] = id;
    json['attributeType'] = attributeType?.toJson();
    json['constraints'] = constraints;
    json['isReserved'] = isReserved;
    json['nslAttributeProperties'] = nslAttributeProperties?.toJson();
    json['isInPotentiality'] = isInPotentiality;
    json['triggerConditionalPotentiality'] = triggerConditionalPotentiality;
    json['contextualId'] = contextualId;
    json['ownerId'] = ownerId;
    json['canDownload'] = canDownload;
    json['exportDesignSystem'] = exportDesignSystem;
    json['naqResultsForBET'] = naqResultsForBET?.toJson();
    json['name'] = name;
    json['displayName'] = displayName;
    json['source'] = source;
    json['status'] = status;
    json['isNameUpdated'] = isNameUpdated;
    json['attachments'] = attachments;
    json['minAge'] = minAge;
    json['maxAge'] = maxAge;
    json['editable'] = editable;
    json['approvalStatus'] = approvalStatus;
    return json;
  }
}

class AttributeType {
  String? type;
  Properties? properties;
  ExtendedProperties? extendedProperties;

  AttributeType({
    this.type,
    this.properties,
    this.extendedProperties,
  });

  AttributeType.fromJson(Map<String, dynamic> json) {
    type = json['type'] as String?;
    properties = (json['properties'] as Map<String,dynamic>?) != null ? Properties.fromJson(json['properties'] as Map<String,dynamic>) : null;
    extendedProperties = (json['extendedProperties'] as Map<String,dynamic>?) != null ? ExtendedProperties.fromJson(json['extendedProperties'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['type'] = type;
    json['properties'] = properties?.toJson();
    json['extendedProperties'] = extendedProperties?.toJson();
    return json;
  }
}

class Properties {
  

  Properties();

  Properties.fromJson(Map<String, dynamic> json) {
    
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    
    return json;
  }
}

class ExtendedProperties {
  List<dynamic>? sourceValues;

  ExtendedProperties({
    this.sourceValues,
  });

  ExtendedProperties.fromJson(Map<String, dynamic> json) {
    sourceValues = json['sourceValues'] as List?;
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


class Layers {
  int? id;
  int? ownerId;
  List<ParticipatingItems>? participatingItems;
  NaqResultsForBET? naqResultsForBET;
  bool? overrideSTEbehavior;
  String? type;

  Layers({
    this.id,
    this.ownerId,
    this.participatingItems,
    this.naqResultsForBET,
    this.overrideSTEbehavior,
    this.type,
  });

  Layers.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    ownerId = json['ownerId'] as int?;
    participatingItems = (json['participatingItems'] as List?)?.map((dynamic e) => ParticipatingItems.fromJson(e as Map<String,dynamic>)).toList();
    naqResultsForBET = (json['naqResultsForBET'] as Map<String,dynamic>?) != null ? NaqResultsForBET.fromJson(json['naqResultsForBET'] as Map<String,dynamic>) : null;
    overrideSTEbehavior = json['overrideSTEbehavior'] as bool?;
    type = json['type'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['ownerId'] = ownerId;
    json['participatingItems'] = participatingItems?.map((e) => e.toJson()).toList();
    json['naqResultsForBET'] = naqResultsForBET?.toJson();
    json['overrideSTEbehavior'] = overrideSTEbehavior;
    json['type'] = type;
    return json;
  }
}

class UiElement {
  String? name;
  String? displayName;
  String? dataType;
  String? uiElement;
  bool? isMulti;
  String? esDataType;
  bool? defaultUiElement;

  UiElement({
    this.name,
    this.displayName,
    this.dataType,
    this.uiElement,
    this.isMulti,
    this.esDataType,
    this.defaultUiElement,
  });

  UiElement.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    displayName = json['displayName'] as String?;
    dataType = json['dataType'] as String?;
    uiElement = json['uiElement'] as String?;
    isMulti = json['isMulti'] as bool?;
    esDataType = json['esDataType'] as String?;
    defaultUiElement = json['defaultUiElement'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['displayName'] = displayName;
    json['dataType'] = dataType;
    json['uiElement'] = uiElement;
    json['isMulti'] = isMulti;
    json['esDataType'] = esDataType;
    json['defaultUiElement'] = defaultUiElement;
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

class PropertiesMap {
  List<dynamic>? currentTime;
  List<dynamic>? customizedIds;
  List<dynamic>? specialFeatures;
  List<dynamic>? measures;
  List<dynamic>? nSLUser;
  List<dynamic>? currentDateTime;
  List<dynamic>? optionalAlternative;
  List<dynamic>? defaultValues;
  List<dynamic>? currentDate;
  List<dynamic>? currency;

  PropertiesMap({
    this.currentTime,
    this.customizedIds,
    this.specialFeatures,
    this.measures,
    this.nSLUser,
    this.currentDateTime,
    this.optionalAlternative,
    this.defaultValues,
    this.currentDate,
    this.currency,
  });

  PropertiesMap.fromJson(Map<String, dynamic> json) {
    currentTime = json['currentTime'] as List?;
    customizedIds = json['customizedIds'] as List?;
    specialFeatures = json['specialFeatures'] as List?;
    measures = json['measures'] as List?;
    nSLUser = json['NSL_User'] as List?;
    currentDateTime = json['currentDateTime'] as List?;
    optionalAlternative = json['optionalAlternative'] as List?;
    defaultValues = json['defaultValues'] as List?;
    currentDate = json['currentDate'] as List?;
    currency = json['currency'] as List?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['currentTime'] = currentTime;
    json['customizedIds'] = customizedIds;
    json['specialFeatures'] = specialFeatures;
    json['measures'] = measures;
    json['NSL_User'] = nSLUser;
    json['currentDateTime'] = currentDateTime;
    json['optionalAlternative'] = optionalAlternative;
    json['defaultValues'] = defaultValues;
    json['currentDate'] = currentDate;
    json['currency'] = currency;
    return json;
  }
}

class CuSystemProperties {
  String? betStoreTCULayer;

  CuSystemProperties({
    this.betStoreTCULayer,
  });

  CuSystemProperties.fromJson(Map<String, dynamic> json) {
    betStoreTCULayer = json['betStoreTCULayer'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['betStoreTCULayer'] = betStoreTCULayer;
    return json;
  }
}

class DesignTimeRights {
  bool? informationRight;
  bool? decisionRight;
  bool? executionRight;
  int? rightHolderId;
  String? rightHolderType;
  String? rightHolderName;
  bool? disableParentRoleAccess;

  DesignTimeRights({
    this.informationRight,
    this.decisionRight,
    this.executionRight,
    this.rightHolderId,
    this.rightHolderType,
    this.rightHolderName,
    this.disableParentRoleAccess,
  });

  DesignTimeRights.fromJson(Map<String, dynamic> json) {
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

class TxnTimeRights {
  bool? informationRight;
  bool? decisionRight;
  bool? executionRight;
  int? rightHolderId;
  String? rightHolderType;
  String? rightHolderName;
  bool? disableParentRoleAccess;

  TxnTimeRights({
    this.informationRight,
    this.decisionRight,
    this.executionRight,
    this.rightHolderId,
    this.rightHolderType,
    this.rightHolderName,
    this.disableParentRoleAccess,
  });

  TxnTimeRights.fromJson(Map<String, dynamic> json) {
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
  String? id;
  String? name;
  List<String>? email;

  Author({
    this.id,
    this.name,
    this.email,
  });

  Author.fromJson(Map<String, dynamic> json) {
    id = json['id'] as String?;
    name = json['name'] as String?;
    email = (json['email'] as List?)?.map((dynamic e) => e as String).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['name'] = name;
    json['email'] = email;
    return json;
  }
}