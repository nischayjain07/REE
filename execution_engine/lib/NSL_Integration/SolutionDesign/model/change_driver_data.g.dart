// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_driver_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangeDriverData _$ChangeDriverDataFromJson(Map<String, dynamic> json) {
  return ChangeDriverData(
    type: json['TYPE'] as String?,
    data: json['DATA'] == null ? null : TxnGeneralEntity.fromJson(json['DATA'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ChangeDriverDataToJson(ChangeDriverData instance) => <String, dynamic>{
      'TYPE': instance.type,
      'DATA': instance.data?.toJson(),
    };
