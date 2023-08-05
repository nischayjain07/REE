// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_widget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIWidget _$UIWidgetFromJson(Map<String, dynamic> json) => UIWidget(
      isContainer: json['isContainer'] as bool? ?? false,
      hasChildren: json['hasChildren'] as bool? ?? false,
      hasChild: json['hasChild'] as bool? ?? false,
    )
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
      ..keyValue = json['keyValue'] as String
      ..keyForValue = json['keyForValue'] as String;

Map<String, dynamic> _$UIWidgetToJson(UIWidget instance) => <String, dynamic>{
      'isContainer': instance.isContainer,
      'hasChildren': instance.hasChildren,
      'hasChild': instance.hasChild,
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children,
      'child': instance.child,
      'keyValue' : instance.keyValue,
      'keyForValue' : instance.keyForValue
    };
