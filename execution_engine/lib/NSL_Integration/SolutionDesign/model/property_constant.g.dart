// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_constant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyConstant _$PropertyConstantFromJson(Map<String, dynamic> json) {
  return PropertyConstant(
    cuLayer: json['cuLayer'] as String?,
    slotItemIndex: json['slotItemIndex'] as int?,
    id: json['id'] as int?,
    changeDriverData: ChangeDriverData.fromJson(json['changeDriverData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PropertyConstantToJson(PropertyConstant instance) => <String, dynamic>{
      'cuLayer': instance.cuLayer,
      'id': instance.id,
      'slotItemIndex': instance.slotItemIndex,
      'changeDriverData': instance.changeDriverData?.toJson(),
    };
