// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_gridView.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIGridView _$UIGridViewFromJson(Map<String, dynamic> json) => UIGridView()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
  ..scrollDirection = json['scrollDirection'] as int
  ..crossAxisCount = json['crossAxisCount'] as int
  ..mainAxisSpacing = (json['mainAxisSpacing'] as num).toDouble()
  ..crossAxisSpacing = (json['crossAxisSpacing'] as num).toDouble()
  ..childAspectRatio = (json['childAspectRatio'] as num).toDouble()
  ..padding = UIPadding.fromJson(json['padding'] as Map<String, dynamic>)
  ..reverse = UISwitchListTile.fromJson(json['reverse'] as Map<String, dynamic>)
  ..shrinkWrap = UISwitchListTile.fromJson(json['shrinkWrap'] as Map<String, dynamic>)
  ..primary = UISwitchListTile.fromJson(json['primary'] as Map<String, dynamic>)
  ..keyValue = json['keyValue'] as String?;

Map<String, dynamic> _$UIGridViewToJson(UIGridView instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'scrollDirection': instance.scrollDirection,
      'crossAxisCount': instance.crossAxisCount,
      'mainAxisSpacing': instance.mainAxisSpacing,
      'crossAxisSpacing': instance.crossAxisSpacing,
      'childAspectRatio': instance.childAspectRatio,
      'padding': instance.padding.toJson(),
      'reverse': instance.reverse.toJson(),
      'shrinkWrap': instance.shrinkWrap.toJson(),
      'primary': instance.primary.toJson(),
      'keyValue': instance.keyValue
    };
