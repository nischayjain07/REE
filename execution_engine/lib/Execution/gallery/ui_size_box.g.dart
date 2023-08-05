// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_size_box.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UISizeBox _$UISizeBoxFromJson(Map<String, dynamic> json) => UISizeBox()
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
  ..width = (json['width'] as num?)?.toDouble()
  ..height = (json['height'] as num?)?.toDouble()
  ..isFixedWidth = json['isFixedWidth'] as bool
  ..isFixedHeight = json['isFixedHeight'] as bool
  ..color = json['color'] as int
  ..indent = (json['indent'] as num).toDouble()
  ..endIndent = (json['endIndent'] as num).toDouble();

Map<String, dynamic> _$UISizeBoxToJson(UISizeBox instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'width': instance.width,
      'height': instance.height,
      'isFixedWidth': instance.isFixedWidth,
      'isFixedHeight': instance.isFixedHeight,
      'color': instance.color,
      'indent': instance.indent,
      'endIndent': instance.endIndent,
    };
