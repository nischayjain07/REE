// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_SingleChildScrollView.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UISingleChildScrollView _$UISingleChildScrollViewFromJson(Map<String, dynamic> json) => UISingleChildScrollView()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
  ..scrollDirection = json['scrollDirection'] as bool
  ..clipBehavior = json['clipBehavior'] as String?
  ..height = json['height'] as double
  ..width = json['width'] as double;

Map<String, dynamic> _$UISingleChildScrollViewToJson(UISingleChildScrollView instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'scrollDirection': instance.scrollDirection,
      'clipBehavior': instance.clipBehavior,
      'height': instance.height,
      'width': instance.width
    };
