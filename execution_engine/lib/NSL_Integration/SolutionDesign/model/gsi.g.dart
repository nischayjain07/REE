// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gsi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GSI _$GSIFromJson(Map<String, dynamic> json) {
  return GSI(
    nextTriggerSet: (json['nextTriggerSet'] as List?)
            ?.map((e) =>   NextTriggerSet.fromJson(e as Map<String, dynamic>))
            ?.toList(),
    dcd: (json['dcd'] as List?)?.map((e) =>   Dcd.fromJson(e as Map<String, dynamic>))?.toList(),
    exceptionCUList: (json['exceptionCUList'] as List?)?.map((e) =>   ExceptionCU.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    allowPreviouCUView: json['allowPreviouCUView'] as bool?,
    eventCUList: json['eventCUList'] as List?,
    cuType: json['cuType'] as String?,
    name: json['name'] as String?,
    displayName: json['displayName'] as String?,
    description: json['description'] as String?,
    agents:
        (json['agents'] as List?)?.map((e) =>   Agent.fromJson(e as Map<String, dynamic>))?.toList(),
    superOrdinateCUList: json['superOrdinateCUList'] as List?,
    subOrdinateCUList: json['subOrdinateCUList'] as List?,
    isReserved: json['isReserved'] as bool?,
    status: json['status'] as String?,
    dsdStatus: json['dsdStatus'] as String?,
    dsdId: json['dsdId'] as String?,
    id: json['id'] as int?,
    designTimeRights: (json['designTimeRights'] as List?)?.map((e) =>   TimeRights.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    txnTimeRights: (json['txnTimeRights'] as List?)?.map((e) =>   TimeRights.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    layers:
        (json['layers'] as List?)?.map((e) =>   Layer.fromJson(e as Map<String, dynamic>))?.toList(),
    masterId: json['masterId'] as int?,
    constraint: json['constraint'] as String?,
    constraintName: json['constraintName'] as String?,
    ownerId: json['ownerId'] as int?,
    rights: (json['rights'] as List?)?.map((e) => e as String)?.toList(),
    solutionLogic: (json['solutionLogic'] as List?)?.map((e) =>   CU.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    source: json['source'] as String?,
    type: json['type'] as String?,
    version: json['version'] as String?,
    keywords: (json['keywords'] as List?)?.map((e) => e as String)?.toList(),
    ontology: (json['ontology'] as List?)?.map((e) =>   Ontology.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    author: Author.fromJson(json['author'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GSIToJson(GSI instance) => <String, dynamic>{
      'nextTriggerSet': instance.nextTriggerSet?.map((e) => e?.toJson())?.toList(),
      'dcd': instance.dcd?.map((e) => e?.toJson())?.toList(),
      'exceptionCUList': instance.exceptionCUList?.map((e) => e?.toJson())?.toList(),
      'allowPreviouCUView': instance.allowPreviouCUView,
      'eventCUList': instance.eventCUList,
      'cuType': instance.cuType,
      'name': instance.name,
      'displayName': instance.displayName,
      'description': instance.description,
      'agents': instance.agents?.map((e) => e?.toJson())?.toList(),
      'superOrdinateCUList': instance.superOrdinateCUList,
      'subOrdinateCUList': instance.subOrdinateCUList,
      'isReserved': instance.isReserved,
      'status': instance.status,
      'dsdStatus': instance.dsdStatus,
      'dsdId': instance.dsdId,
      'id': instance.id,
      'designTimeRights': instance.designTimeRights?.map((e) => e?.toJson())?.toList(),
      'txnTimeRights': instance.txnTimeRights?.map((e) => e?.toJson())?.toList(),
      'layers': instance.layers?.map((e) => e?.toJson())?.toList(),
      'constraint': instance.constraint,
      'constraintName': instance.constraintName,
      'solutionLogic': instance.solutionLogic?.map((e) => e?.toJson())?.toList(),
      'masterId': instance.masterId,
      'ownerId': instance.ownerId,
      'rights': instance.rights,
      'version': instance.version,
      'source': instance.source,
      'type': instance.type,
      'keywords': instance.keywords,
      'ontology': instance.ontology?.map((e) => e?.toJson())?.toList(),
      'author': instance.author?.toJson(),
    };
