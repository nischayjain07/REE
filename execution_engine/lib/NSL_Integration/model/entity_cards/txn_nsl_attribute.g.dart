// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'txn_nsl_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TxnNslAttribute _$TxnNslAttributeFromJson(Map<String, dynamic> json) {
  return TxnNslAttribute(
    name: json['name'] as String?,
    nslAttributeID: json['nslAttributeID'] as int?,
    values: json['values'] as List?,
    displayName: json['displayName'] as String?,
    // result:
    //     // json['result'] == null ? null :
    //     Result?.fromJson(json['result'] as Map<String, dynamic>),
    // txnGeneralEntity: TxnGeneralEntity?.fromJson(json['txnGeneralEntity'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TxnNslAttributeToJson(TxnNslAttribute instance) => <String, dynamic>{
      'name': instance.name,
      'nslAttributeID': instance.nslAttributeID,
      'values': instance.values,
      'displayName': instance.displayName,
      // 'txnGeneralEntity': instance.txnGeneralEntity?.toJson(),
      // 'result': instance.result?.toJson(),
    };
