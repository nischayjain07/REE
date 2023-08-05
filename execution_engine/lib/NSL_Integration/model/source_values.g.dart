// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_values.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SourceValuesDTO _$SourceValuesDTOFromJson(Map<String, dynamic> json) {
  return SourceValuesDTO(
    TYPE: json['TYPE'] as String,
    DATA: json['DATA'] == null ? null : DataDTO.fromJson(json['DATA'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SourceValuesDTOToJson(SourceValuesDTO instance) => <String, dynamic>{
      'TYPE': instance.TYPE,
      'DATA': instance.DATA?.toJson(),
    };
