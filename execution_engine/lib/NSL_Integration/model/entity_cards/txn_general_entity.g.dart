// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'txn_general_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TxnGeneralEntity _$TxnGeneralEntityFromJson(Map<String, dynamic> json) {
  return TxnGeneralEntity(
    name: json['name'] as String?,
    // generalEntityID: json['generalEntityID'] as int?,
    id: json['id'] as int?,
    transEntityRecords: (json['transEntityRecords'] as List?)
        ?.map((e) => TransEntityRecords?.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TxnGeneralEntityToJson(TxnGeneralEntity instance) => <String, dynamic>{
      'name': instance.name,
      //'generalEntityID': instance.generalEntityID,
      'id': instance.id,
      'transEntityRecords': instance.transEntityRecords?.map((e) => e?.toJson())?.toList()
    };
