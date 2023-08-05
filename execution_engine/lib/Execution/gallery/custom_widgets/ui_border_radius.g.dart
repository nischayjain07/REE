// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_border_radius.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIBorderRadius _$UIBorderRadiusFromJson(Map<String, dynamic> json) => UIBorderRadius()
  ..class_name = json['class_name'] as String
  ..topLeft = (json['topLeft'] as num).toDouble()
  ..topRight = (json['topRight'] as num).toDouble()
  ..bottomLeft = (json['bottomLeft'] as num).toDouble()
  ..bottomRight = (json['bottomRight'] as num).toDouble()
  ..borderRadiusLock = json['borderRadiusLock'] as bool;

Map<String, dynamic> _$UIBorderRadiusToJson(UIBorderRadius instance) => <String, dynamic>{
      'class_name': instance.class_name,
      'topLeft': instance.topLeft,
      'topRight': instance.topRight,
      'bottomLeft': instance.bottomLeft,
      'bottomRight': instance.bottomRight,
      'borderRadiusLock': instance.borderRadiusLock,
    };
