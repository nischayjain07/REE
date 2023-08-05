// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_icon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIIcon _$UIIconFromJson(Map<String, dynamic> json) => UIIcon(
      iconData: json['iconData'] as String?,
      iconSize: (json['iconSize'] as num?)?.toDouble(),
      color: json['color'] as int?,
    )
      ..offset = (json['offset'] as num).toDouble()
      ..offset1 = (json['offset1'] as num).toDouble()
      ..size1 = (json['size1'] as num?)?.toDouble()
      ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
      ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
      ..class_name = json['class_name'] as String;

Map<String, dynamic> _$UIIconToJson(UIIcon instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'class_name': instance.class_name,
      'iconData': instance.iconData,
      'color': instance.color,
      'iconSize': instance.iconSize
    };
