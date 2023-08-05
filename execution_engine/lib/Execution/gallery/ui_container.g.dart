// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIContainer _$UIContainerFromJson(Map<String, dynamic> json) => UIContainer()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
  ..decoration =
      json['decoration'] == null ? null : UIBoxDecoration.fromJson(json['decoration'] as Map<String, dynamic>)
  ..padding = json['padding'] == null ? null : UIPadding.fromJson(json['padding'] as Map<String, dynamic>)
  ..width = (json['width'] as num?)?.toDouble()
  ..height = (json['height'] as num?)?.toDouble()
  ..margin = json['margin'] == null ? UIMargin() : UIMargin.fromJson(json['margin'] as Map<String, dynamic>)
  ..isFixedWidth = json['isFixedWidth'] as bool?
  ..isFixedHeight = json['isFixedHeight'] as bool?
  ..keyValue = json['keyValue'] as String?;

Map<String, dynamic> _$UIContainerToJson(UIContainer instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'decoration': instance.decoration?.toJson(),
      'padding': instance.padding?.toJson(),
      'margin': instance.margin?.toJson(),
      'width': instance.width,
      'isFixedWidth': instance.isFixedWidth,
      'height': instance.height,
      'isFixedHeight': instance.isFixedHeight,
      'keyValue' : instance.keyValue
    };
