// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_padding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIPadding _$UIPaddingFromJson(Map<String, dynamic> json) => UIPadding()
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
  ..paddingLock = json['paddingLock'] as bool;

Map<String, dynamic> _$UIPaddingToJson(UIPadding instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'paddingLock': instance.paddingLock,
    };
