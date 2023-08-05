// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_VerticalDivider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIVerticalDivider _$UIVerticalDividerFromJson(Map<String, dynamic> json) =>
    UIVerticalDivider()
      ..offset = (json['offset'] as num).toDouble()
      ..offset1 = (json['offset1'] as num).toDouble()
      ..size = (json['size'] as num?)?.toDouble()
      ..size1 = (json['size1'] as num?)?.toDouble()
      ..class_name = json['class_name'] as String
      ..children = (json['children'] as List<dynamic>)
          .map((e) => UIWidget.fromJson(e as Map<String, dynamic>))
          .toList()
      ..child = json['child'] == null
          ? null
          : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
      ..color = json['color'] as int
      ..thickness = (json['thickness'] as num).toDouble()
      ..width = (json['width'] as num).toDouble()
      ..height = (json['height'] as num).toDouble()
      ..indent = (json['indent'] as num).toDouble()
      ..endIndent = (json['endIndent'] as num).toDouble()
      ..indexWherePlaced = json['indexWherePlaced'] as int?;

Map<String, dynamic> _$UIVerticalDividerToJson(UIVerticalDivider instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'color': instance.color,
      'thickness': instance.thickness,
      'width': instance.width,
      'height': instance.height,
      'indent': instance.indent,
      'endIndent': instance.endIndent,
      'indexWherePlaced': instance.indexWherePlaced,
    };
