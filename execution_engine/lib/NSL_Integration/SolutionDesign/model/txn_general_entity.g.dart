// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'txn_general_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TxnGeneralEntity _$TxnGeneralEntityFromJson(Map<String, dynamic> json) {
  return TxnGeneralEntity(
    name: json['name'] as String?,
    dsdId: json['dsdId'] as String?,
    generalEntityID: json['generalEntityID'] as int?,
    transEntityRecords: (json['transEntityRecords'] as List?)
        ?.map((e) => TransEntityRecords?.fromJson(e as Map<String, dynamic>))
        .toList(),
    properties: json['properties'] as List?,
  );
}

Map<String, dynamic> _$TxnGeneralEntityToJson(TxnGeneralEntity instance) => <String, dynamic>{
      'name': instance.name,
      'dsdId': instance.dsdId,
      'generalEntityID': instance.generalEntityID,
      'transEntityRecords': instance.transEntityRecords?.map((e) => e?.toJson())?.toList(),
      'properties': instance.properties,
    };
