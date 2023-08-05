// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_floating_action_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIFloatingActionButton _$UIFloatingActionButtonFromJson(
        Map<String, dynamic> json) =>
    UIFloatingActionButton()
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
      ..bgColor = json['bgColor'] as int
      ..fgColor = json['fgColor'] as int
      ..tooltip = json['tooltip'] as String?;

Map<String, dynamic> _$UIFloatingActionButtonToJson(
        UIFloatingActionButton instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'bgColor': instance.bgColor,
      'fgColor': instance.fgColor,
      'tooltip': instance.tooltip,
    };
