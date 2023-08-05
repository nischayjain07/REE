// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_box_shadow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIBoxShadow _$UIBoxShadowFromJson(Map<String, dynamic> json) => UIBoxShadow()
  ..class_name = json['class_name'] as String
  ..color = json['color'] as int?
  ..offsetX = (json['offsetX'] as num?)?.toDouble()
  ..offsetY = (json['offsetY'] as num?)?.toDouble()
  ..spreadRadius = (json['spreadRadius'] as num?)?.toDouble()
  ..blurRadius = (json['blurRadius'] as num?)?.toDouble()
  ..blurStyle = json['blurStyle'] as String?;

Map<String, dynamic> _$UIBoxShadowToJson(UIBoxShadow instance) => <String, dynamic>{
      'class_name': instance.class_name,
      'color': instance.color,
      'offsetX': instance.offsetX,
      'offsetY': instance.offsetY,
      'spreadRadius': instance.spreadRadius,
      'blurRadius': instance.blurRadius,
      'blurStyle': instance.blurStyle,
    };
