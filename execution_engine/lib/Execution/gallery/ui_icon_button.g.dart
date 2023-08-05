part of 'ui_icon_button.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIIconButton _$UIIconButtonFromJson(Map<String, dynamic> json) => UIIconButton()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
  ..class_name = json['class_name'] as String
  ..padding = UIPadding.fromJson(json['padding'] as Map<String, dynamic>)
  ..icon = UIIcon.fromJson(json['icon'] as Map<String, dynamic>)
  ..hoverColor = json['hoverColor'] as int?
  ..focusColor = json['focusColor'] as int?
  ..linkedPage = json['linkedPage'] as String;

Map<String, dynamic> _$UIIconButtonToJson(UIIconButton instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size1': instance.size1,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'class_name': instance.class_name,
      'padding': instance.padding?.toJson(),
      'icon': instance.icon?.toJson(),
      'hoverColor': instance.hoverColor,
      'focusColor': instance.hoverColor,
      'linkedPage': instance.linkedPage
    };
