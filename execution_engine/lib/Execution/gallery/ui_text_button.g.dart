// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_text_button.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UITextButton _$UITextButtonFromJson(Map<String, dynamic> json) => UITextButton()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
  ..value = json['value'] as String?
  ..textAlign = json['textAlign'] as int
  ..color = json['color'] as int
  ..foregroundColor = json['foregroundColor'] as int
  ..backgroundColor = json['backgroundColor'] as int
  ..buttonText = json['buttonText'] as String
  ..fontSize = (json['fontSize'] as num).toDouble()
  ..padding = (json['padding'] as num).toDouble()
  ..fontStyle = json['fontStyle'] as int
  ..linkedPage = json['linkedPage'] as String
  ..borderRadius = json['borderRadius'] == null
      ? UIBorderRadius()
      : UIBorderRadius.fromJson(json['borderRadius'] as Map<String, dynamic>)
  ..keyValue = json['keyValue'] as String?
  ..gsiIndex = json['gsiIndex'] as int?;


Map<String, dynamic> _$UITextButtonToJson(UITextButton instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'value': instance.value,
      'textAlign': instance.textAlign,
      'color': instance.color,
      'foregroundColor': instance.foregroundColor,
      'backgroundColor': instance.backgroundColor,
      'buttonText': instance.buttonText,
      'fontSize': instance.fontSize,
      'padding': instance.padding,
      'fontStyle': instance.fontStyle,
      'linkedPage': instance.linkedPage,
      'borderRadius': instance.borderRadius?.toJson(),
      'keyValue': instance.keyValue,
      'gsiIndex': instance.gsiIndex
    };
