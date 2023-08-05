// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tnx_nsl_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TxnNslAttribute _$TxnNslAttributeFromJson(Map<String, dynamic> json) {
  return TxnNslAttribute(
    name: json['name'] as String?,
    nslAttributeID: json['nslAttributeID'] as int?,
    dsdId: json['dsdId'] as String?,
    values: (json['values'] as List?)?.map((e) => e as String).toList(),
    properties: (json['properties'] as List?)?.map((e) => e as String).toList(),
    txnGeneralEntity: TxnGeneralEntity?.fromJson(json['txnGeneralEntity'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TxnNslAttributeToJson(TxnNslAttribute instance) => <String, dynamic>{
      'name': instance.name,
      'dsdId': instance.dsdId,
      'values': instance.values,
      'properties': instance.properties,
      'nslAttributeID': instance.nslAttributeID,
      'txnGeneralEntity': instance.txnGeneralEntity?.toJson(),
    };
