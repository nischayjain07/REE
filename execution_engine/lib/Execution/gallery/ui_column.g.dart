// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_column.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIColumn _$UIColumnFromJson(Map<String, dynamic> json) => UIColumn()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..mainAxisAlignment = json['mainAxisAlignment'] as String?
  ..crossAxisAlignment = json['crossAxisAlignment'] as String?
  ..mainAxisSize = json['mainAxisSize'] as String?
  ..textDirection = json['textDirection'] as String?
  ..verticalDirection = json['verticalDirection'] as String?
  ..keyValue = json['keyValue'] as String?;

Map<String, dynamic> _$UIColumnToJson(UIColumn instance) {
  return <String, dynamic>{
    'offset': instance.offset,
    'offset1': instance.offset1,
    'size': instance.size,
    'size1': instance.size1,
    'class_name': instance.class_name,
    'children': instance.children.map((e) => e.toJson()).toList(),
    'mainAxisAlignment': instance.mainAxisAlignment,
    'crossAxisAlignment': instance.crossAxisAlignment,
    'mainAxisSize': instance.mainAxisSize,
    'textDirection': instance.textDirection,
    'verticalDirection': instance.verticalDirection,
    'keyValue': instance.keyValue
  };
}
