// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CU _$CUFromJson(Map<String, dynamic> json) {
  return CU(
    index: json['index'] as int?,
    masterId: json['masterId'] as int?,
    ownerId: json['ownerId'] as int?,
    mileStoneId: json['mileStoneId'] as int?,
    cuType: json['cuType'] as String?,
    name: json['name'] as String?,
    displayName: json['displayName'] as String?,
    dsdStatus: json['dsdStatus'] as String?,
    description: json['description'] as String?,
    reservedCUType: json['reservedCUType'] as String?,
    dsdId: json['dsdId'] as String?,
    dsdReferencedChangeUnit: json['dsdReferencedChangeUnit'] as String?,
    version: json['version'] as String?,
    agents:
        (json['agents'] as List?)?.map((e) =>   Agent?.fromJson(e as Map<String, dynamic>)).toList(),
    layers:
        (json['layers'] as List?)?.map((e) =>   Layer?.fromJson(e as Map<String, dynamic>)).toList(),
    eventCUList: (json['eventCUList'] as List?)?.map((e) =>   EventCU?.fromJson(e as Map<String, dynamic>))
        .toList(),
    designTimeRights: (json['designTimeRights'] as List?)?.map((e) =>   TimeRights?.fromJson(e as Map<String, dynamic>))
        .toList(),
    txnTimeRights: (json['txnTimeRights'] as List?)?.map((e) =>   TimeRights?.fromJson(e as Map<String, dynamic>))
        .toList(),
    contextualId: json['contextualId'] as List?,
    referencedChangeUnit: json['referencedChangeUnit'] as int?,
    isReserved: json['isReserved'] as bool?,
    status: json['status'] as String?,
    gsiAddedToGsiFlag: json['gsiAddedToGsiFlag'] as bool?,
    id: json['id'] as int?,
    guid: json['guid'] as String?,
    nextTriggerSet: (json['nextTriggerSet'] as List?)?.map((e) =>   NextTriggerSet?.fromJson(e as Map<String, dynamic>))
        .toList(),
    dcd: (json['dcd'] as List?)?.map((e) =>   Dcd?.fromJson(e as Map<String, dynamic>)).toList(),
    exceptionCUList: (json['exceptionCUList'] as List?)?.map((e) =>   ExceptionCU?.fromJson(e as Map<String, dynamic>))
        .toList(),
    mindCUList: (json['mindCUList'] as List?)?.map((e) =>   MindCU?.fromJson(e as Map<String, dynamic>))
        .toList(),
    entityDesignRights: json['entityDesignRights'] as Map<String, dynamic>?,
    entityTransactionRights: json['entityTransactionRights'] as Map<String, dynamic>?,
    attributeDesignRights: json['attributeDesignRights'] as Map<String, dynamic>?,
    attributeTransactionRights: json['attributeTransactionRights'] as Map<String, dynamic>?,
    specialFeatureProperties: json['specialFeatureProperties'] as Map<String, dynamic>?,
    membershipList: json['membershipList'] as List?,
    propertiesMap:
        json['propertiesMap'] == null ? null : PropertiesMap?.fromJson(json['propertiesMap'] as Map<String, dynamic>),
    updatedAt: json['updatedAt'] as int?,
    draftedCu: json['draftedCu'] as bool?,
    constraint: json['constraint'] as String?,
    constraintName: json['constraintName'] as String?,
    condition: json['condition'] as String?,
    conditionName: json['conditionName'] as String?,
    source: json['source'] as String?,
    estimatedTime: json['estimatedTime'] as String?,
    solutionLogic: (json['solutionLogic'] as List?)?.map((e) =>   CU?.fromJson(e as Map<String, dynamic>))
        .toList(),
    design: json['design'] == null ? null : SolutionDesign?.fromJson(json['design'] as Map<String, dynamic>),
    slotItemProperties: json['slotItemProperties'] as Map<String, dynamic>?,
    querySentence: json['querySentence'] as String?,
    slotItemData: json['slotItemData'] as Map<String, dynamic>?,
    keywords: (json['keywords'] as List?)?.map((e) => e as String).toList(),
    ontology: (json['ontology'] as List?)?.map((e) =>   Ontology?.fromJson(e as Map<String, dynamic>))
        .toList(),
    tCUConditionalPotentiality: (json['tCUConditionalPotentiality'] as List?)?.map((e) => e as String).toList(),
    tCUConditionalPotentialityNames:
        (json['tCUConditionalPotentialityNames'] as List?)?.map((e) => e as String).toList(),
    author: json['author'] == null ? null : Author?.fromJson(json['author'] as Map<String, dynamic>),
  )
    ..type = json['TYPE'] as String?
    ..data = json['DATA'] == null ? null : CU?.fromJson(json['DATA'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CUToJson(CU instance) => <String, dynamic>{
      'index': instance.index,
      'cuType': instance.cuType,
      'name': instance.name,
      'mileStoneId': instance.mileStoneId,
      'displayName': instance.displayName,
      'description': instance.description,
      'agents': instance.agents?.map((e) => e.toJson()).toList(),
      'layers': instance.layers?.map((e) => e.toJson()).toList(),
      'eventCUList': instance.eventCUList?.map((e) => e.toJson()).toList(),
      'contextualId': instance.contextualId,
      'referencedChangeUnit': instance.referencedChangeUnit,
      'isReserved': instance.isReserved,
      'status': instance.status,
      'dsdStatus': instance.dsdStatus,
      'id': instance.id,
      'source': instance.source,
      'guid': instance.guid,
      'version': instance.version,
      'dsdId': instance.dsdId,
      'reservedCUType': instance.reservedCUType,
      'nextTriggerSet': instance.nextTriggerSet?.map((e) => e.toJson()).toList(),
      'dcd': instance.dcd?.map((e) => e.toJson()).toList(),
      'exceptionCUList': instance.exceptionCUList?.map((e) => e.toJson()).toList(),
      'designTimeRights': instance.designTimeRights?.map((e) => e.toJson()).toList(),
      'txnTimeRights': instance.txnTimeRights?.map((e) => e.toJson()).toList(),
      'mindCUList': instance.mindCUList?.map((e) => e.toJson()).toList(),
      'entityDesignRights': instance.entityDesignRights,
      'entityTransactionRights': instance.entityTransactionRights,
      'attributeDesignRights': instance.attributeDesignRights,
      'attributeTransactionRights': instance.attributeTransactionRights,
      'specialFeatureProperties': instance.specialFeatureProperties,
      'membershipList': instance.membershipList,
      'propertiesMap': instance.propertiesMap?.toJson(),
      'updatedAt': instance.updatedAt,
      'draftedCu': instance.draftedCu,
      'TYPE': instance.type,
      'DATA': instance.data?.toJson(),
      'constraintName': instance.constraintName,
      'constraint': instance.constraint,
      'condition': instance.condition,
      'conditionName': instance.conditionName,
      'solutionLogic': instance.solutionLogic?.map((e) => e.toJson()).toList(),
      'gsiAddedToGsiFlag': instance.gsiAddedToGsiFlag,
      'design': instance.design?.toJson(),
      'masterId': instance.masterId,
      'ownerId': instance.ownerId,
      'dsdReferencedChangeUnit': instance.dsdReferencedChangeUnit,
      'estimatedTime': instance.estimatedTime,
      'slotItemProperties': instance.slotItemProperties,
      'slotItemData': instance.slotItemData,
      'querySentence': instance.querySentence,
      'keywords': instance.keywords,
      'ontology': instance.ontology?.map((e) => e.toJson()).toList(),
      'tCUConditionalPotentiality': instance.tCUConditionalPotentiality,
      'tCUConditionalPotentialityNames': instance.tCUConditionalPotentialityNames,
      'author': instance.author?.toJson(),
    };
