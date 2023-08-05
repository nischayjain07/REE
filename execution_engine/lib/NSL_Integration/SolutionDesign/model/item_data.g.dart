// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemData _$ItemDataFromJson(Map<String, dynamic> json) {
  return ItemData(
    name: json['name'] as String?,
    dsdId: json['dsdId'] as String?,
    status: json['status'] as String? ?? 'DRAFT',
    nslAttributes: (json['nslAttributes'] as List?)?.map((e) =>   NslAttributes.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    generalEntityID: json['generalEntityID'] as int?,
    isReserved: json['isReserved'] as bool? ?? false,
    id: json['id'] as int?,
    ownerId: json['ownerId'] as int?,
    masterId: json['masterId'] as int?,
    version: json['version'] as String?,
    source: json['source'] as String?,
    configuration: json['configuration'] as String?,
    dsdStatus: json['dsdStatus'] as String?,
    guid: json['guid'] as String?,
    updatedAt: json['updatedAt'] as int?,
    component: json['component'] as String?,
    displayName: json['displayName'] as String?,
    gsiLevelEntity: json['gsiLevelEntity'] as bool?,
    isMultiValue: json['isMultiValue'] as bool?,
    designTimeRights: (json['designTimeRights'] as List?)?.map((e) =>   TimeRights.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    txnTimeRights: (json['txnTimeRights'] as List?)?.map((e) =>   TimeRights.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    description: json['description'] as String?,
    keywords: (json['keywords'] as List?)?.map((e) => e as String)?.toList(),
    ontology: (json['ontology'] as List?)?.map((e) =>   Ontology.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    dsdMetadataId: json['dsdMetadataId'] as String?,
  );
}

Map<String, dynamic> _$ItemDataToJson(ItemData instance) => <String, dynamic>{
      'name': instance.name,
      'status': instance.status,
      'nslAttributes': instance.nslAttributes?.map((e) => e?.toJson())?.toList(),
      'generalEntityID': instance.generalEntityID,
      'isReserved': instance.isReserved,
      'id': instance.id,
      'ownerId': instance.ownerId,
      'dsdId': instance.dsdId,
      'isMultiValue': instance.isMultiValue,
      'masterId': instance.masterId,
      'guid': instance.guid,
      'version': instance.version,
      'source': instance.source,
      'configuration': instance.configuration,
      'dsdStatus': instance.dsdStatus,
      'displayName': instance.displayName,
      'updatedAt': instance.updatedAt,
      'component': instance.component,
      'gsiLevelEntity': instance.gsiLevelEntity,
      'designTimeRights': instance.designTimeRights?.map((e) => e?.toJson())?.toList(),
      'txnTimeRights': instance.txnTimeRights?.map((e) => e?.toJson())?.toList(),
      'keywords': instance.keywords,
      'ontology': instance.ontology?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'dsdMetadataId': instance.dsdMetadataId,
    };
