// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_text.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIText _$UITextFromJson(Map<String, dynamic> json) => UIText()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
  ..value = json['value'] as String?
  ..textAlign = json['textAlign'] as int?
  ..fontStyle = json['fontStyle'] as int?
  ..titleD = json['titleD'] as int
  ..titleD1 = json['titleD1'] as int
  ..overflow = json['overflow'] as String?
  ..textStyle = json['textStyle'] == null ? null : UITextStyle.fromJson(json['textStyle'] as Map<String, dynamic>)
  ..maxLines = json['maxLines'] as int?
  ..keyValue = json['keyValue'] as String?
  ..keyForValue = json['keyForValue'] as String?;

Map<String, dynamic> _$UITextToJson(UIText instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'value': instance.value,
      'textAlign': instance.textAlign,
      'fontStyle': instance.fontStyle,
      'titleD': instance.titleD,
      'titleD1': instance.titleD1,
      'overflow': instance.overflow,
      'textStyle': instance.textStyle?.toJson(),
      'maxLines': instance.maxLines,
      'keyValue' : instance.keyValue,
      'keyForValue': instance.keyForValue
    };
