// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_tooltip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UITooltip _$UITooltipFromJson(Map<String, dynamic> json) => UITooltip()
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
  ..left = (json['left'] as num?)?.toDouble()
  ..top = (json['top'] as num?)?.toDouble()
  ..right = (json['right'] as num?)?.toDouble()
  ..bottom = (json['bottom'] as num?)?.toDouble()
  ..verticalOffset = (json['verticalOffset'] as num?)?.toDouble()
  ..decoration = json['decoration'] == null
      ? null
      : UIBoxDecoration.fromJson(json['decoration'] as Map<String, dynamic>)
  ..textStyle = json['textStyle'] == null
      ? null
      : UITextStyle.fromJson(json['textStyle'] as Map<String, dynamic>)
  ..message = json['message'] as String;

Map<String, dynamic> _$UITooltipToJson(UITooltip instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
      'verticalOffset': instance.verticalOffset,
      'decoration': instance.decoration?.toJson(),
      'textStyle': instance.textStyle?.toJson(),
      'message': instance.message,
    };
