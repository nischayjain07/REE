// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'textStyleContainer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UITextStyleContainer _$UITextStyleContainerFromJson(Map<String, dynamic> json) => UITextStyleContainer()
  ..fontStyle = json['fontStyle'] as int?
  ..underline = json['underline'] as bool
  ..strike = json['strike'] as bool
  ..style = json['style'] as bool;

Map<String, dynamic> _$UITextStyleContainerToJson(UITextStyleContainer instance) => <String, dynamic>{
      'fontStyle': instance.fontStyle,
      'underline': instance.underline,
      'strike': instance.strike,
      'style': instance.style,
    };
