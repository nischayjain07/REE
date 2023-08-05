// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyData _$PropertyDataFromJson(Map<String, dynamic> json) {
  return PropertyData(
    constant: PropertyConstant.fromJson(json['CONSTANT'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PropertyDataToJson(PropertyData instance) => <String, dynamic>{
      'CONSTANT': instance.constant?.toJson(),
    };
