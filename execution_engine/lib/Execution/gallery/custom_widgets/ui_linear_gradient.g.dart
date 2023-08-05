// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_linear_gradient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UILinearGradient _$UILinearGradientFromJson(Map<String, dynamic> json) => UILinearGradient()
  ..class_name = json['class_name'] as String
  ..x = (json['x'] as num?)?.toDouble()
  ..y = (json['y'] as num?)?.toDouble()
  ..tileMode = json['tileMode'] as String
  ..transform = (json['transform'] as num?)?.toDouble();

Map<String, dynamic> _$UILinearGradientToJson(UILinearGradient instance) => <String, dynamic>{
      'class_name': instance.class_name,
      'x': instance.x,
      'y': instance.y,
      'tileMode': instance.tileMode,
      'transform': instance.transform,
    };
