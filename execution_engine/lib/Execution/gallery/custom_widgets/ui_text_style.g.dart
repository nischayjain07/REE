// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_text_style.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UITextStyle _$UITextStyleFromJson(Map<String, dynamic> json) => UITextStyle(
      color: json['color'] as String?,
      fontSize: (json['fontSize'] as num?)?.toDouble(),
      fontWeight: json['fontWeight'] as String?,
      fontHeight: (json['fontHeight'] as num?)?.toDouble(),
      fontStyle: json['fontStyle'] as String?,
      textBaseline: json['textBaseline'] as String?,
    )
      ..class_name = json['class_name'] as String
      ..decoration = json['decoration'] as String?
      ..fontFamily = json['fontFamily'] as String?;

Map<String, dynamic> _$UITextStyleToJson(UITextStyle instance) => <String, dynamic>{
      'class_name': instance.class_name,
      'color': instance.color,
      'fontSize': instance.fontSize,
      'fontWeight': instance.fontWeight,
      'fontHeight': instance.fontHeight,
      'fontStyle': instance.fontStyle,
      'textBaseline': instance.textBaseline,
      'decoration': instance.decoration,
      'fontFamily': instance.fontFamily
    };

UIGoogleFontsInter _$UIGoogleFontsInterFromJson(Map<String, dynamic> json) => UIGoogleFontsInter()
  ..class_name = json['class_name'] as String
  ..color = json['color'] as String?
  ..fontSize = (json['fontSize'] as num?)?.toDouble()
  ..fontWeight = json['fontWeight'] as String?
  ..fontHeight = (json['fontHeight'] as num?)?.toDouble()
  ..fontStyle = json['fontStyle'] as String?
  ..textBaseline = json['textBaseline'] as String?;

Map<String, dynamic> _$UIGoogleFontsInterToJson(UIGoogleFontsInter instance) => <String, dynamic>{
      'class_name': instance.class_name,
      'color': instance.color,
      'fontSize': instance.fontSize,
      'fontWeight': instance.fontWeight,
      'fontHeight': instance.fontHeight,
      'fontStyle': instance.fontStyle,
      'textBaseline': instance.textBaseline,
    };

UIGoogleFontsRoboto _$UIGoogleFontsRobotoFromJson(Map<String, dynamic> json) => UIGoogleFontsRoboto()
  ..class_name = json['class_name'] as String
  ..color = json['color'] as String?
  ..fontSize = (json['fontSize'] as num?)?.toDouble()
  ..fontWeight = json['fontWeight'] as String?
  ..fontHeight = (json['fontHeight'] as num?)?.toDouble()
  ..fontStyle = json['fontStyle'] as String?
  ..textBaseline = json['textBaseline'] as String?;

Map<String, dynamic> _$UIGoogleFontsRobotoToJson(UIGoogleFontsRoboto instance) => <String, dynamic>{
      'class_name': instance.class_name,
      'color': instance.color,
      'fontSize': instance.fontSize,
      'fontWeight': instance.fontWeight,
      'fontHeight': instance.fontHeight,
      'fontStyle': instance.fontStyle,
      'textBaseline': instance.textBaseline,
    };
