// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'margin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIMargin _$UIMarginFromJson(Map<String, dynamic> json) => UIMargin(
      initMargin: (json['initMargin'] as num?)?.toDouble() ?? 0,
    )
      ..marginLock = json['paddingLock'] as bool
      ..left = (json['left'] as num).toDouble()
      ..top = (json['top'] as num).toDouble()
      ..right = (json['right'] as num).toDouble()
      ..bottom = (json['bottom'] as num).toDouble();

Map<String, dynamic> _$UIMarginToJson(UIMargin instance) => <String, dynamic>{
      'initPadding': instance.initMargin,
      'paddingLock': instance.marginLock,
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
    };
