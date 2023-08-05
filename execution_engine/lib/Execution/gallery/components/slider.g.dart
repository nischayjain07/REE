// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UISlider _$UISliderFromJson(Map<String, dynamic> json) => UISlider(
      wid: UIWidget.fromJson(json['wid'] as Map<String, dynamic>),
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
      title: json['title'] as String,
      defaultValue: (json['defaultValue'] as num).toDouble(),
      num: json['num'] as int,
    );

Map<String, dynamic> _$UISliderToJson(UISlider instance) => <String, dynamic>{
      'wid': instance.wid,
      'min': instance.min,
      'max': instance.max,
      'title': instance.title,
      'defaultValue': instance.defaultValue,
      'num': instance.num,
    };
