// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIRow _$UIRowFromJson(Map<String, dynamic> json) => UIRow()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
  ..mainAxisAlignment = json['mainAxisAlignment'] as String?
  ..crossAxisAlignment = json['crossAxisAlignment'] as String?;

Map<String, dynamic> _$UIRowToJson(UIRow instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'mainAxisAlignment': instance.mainAxisAlignment,
      'crossAxisAlignment': instance.crossAxisAlignment
    };
