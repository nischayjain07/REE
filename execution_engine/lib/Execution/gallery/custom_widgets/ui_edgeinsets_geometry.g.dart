// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_edgeinsets_geometry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIEdgeInsetsGeometry _$UIEdgeInsetsGeometryFromJson(
        Map<String, dynamic> json) =>
    UIEdgeInsetsGeometry(
      left: (json['left'] as num?)?.toDouble(),
      top: (json['top'] as num?)?.toDouble(),
      right: (json['right'] as num?)?.toDouble(),
      bottom: (json['bottom'] as num?)?.toDouble(),
    )..class_name = json['class_name'] as String;

Map<String, dynamic> _$UIEdgeInsetsGeometryToJson(
        UIEdgeInsetsGeometry instance) =>
    <String, dynamic>{
      'class_name': instance.class_name,
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
    };
