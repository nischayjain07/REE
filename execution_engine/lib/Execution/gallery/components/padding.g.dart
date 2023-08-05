// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'padding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIPadding _$UIPaddingFromJson(Map<String, dynamic> json) => UIPadding(
      initPadding: (json['initPadding'] as num?)?.toDouble() ?? 0,
    )
      ..paddingLock = json['paddingLock'] as bool
      ..left = (json['left'] as num).toDouble()
      ..top = (json['top'] as num).toDouble()
      ..right = (json['right'] as num).toDouble()
      ..bottom = (json['bottom'] as num).toDouble();

Map<String, dynamic> _$UIPaddingToJson(UIPadding instance) => <String, dynamic>{
      'initPadding': instance.initPadding,
      'paddingLock': instance.paddingLock,
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
    };
