// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trans_entity_records.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransEntityRecords _$TransEntityRecordsFromJson(Map<String, dynamic> json) {
  return TransEntityRecords(
    txnNslAttribute: (json['txnNslAttribute'] as List?)
        ?.map((e) =>  TxnNslAttribute?.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    generalEntityID: json['generalEntityID'] as int?,
  );
}

Map<String, dynamic> _$TransEntityRecordsToJson(TransEntityRecords instance) => <String, dynamic>{
      'txnNslAttribute': instance.txnNslAttribute?.map((e) => e?.toJson())?.toList(),
      'generalEntityID': instance.generalEntityID
    };
