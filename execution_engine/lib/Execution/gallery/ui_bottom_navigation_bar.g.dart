// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_bottom_navigation_bar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIBottomNavigationBar _$UIBottomNavigationBarFromJson(
        Map<String, dynamic> json) =>
    UIBottomNavigationBar()
      ..offset = (json['offset'] as num).toDouble()
      ..offset1 = (json['offset1'] as num).toDouble()
      ..size = (json['size'] as num?)?.toDouble()
      ..size1 = (json['size1'] as num?)?.toDouble()
      ..children = (json['children'] as List<dynamic>)
          .map((e) => UIWidget.fromJson(e as Map<String, dynamic>))
          .toList()
      ..child = json['child'] == null
          ? null
          : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
      ..class_name = json['class_name'] as String
      ..bgColor = json['bgColor'] as int
      ..fgColor = json['fgColor'] as int
      ..tooltip = json['tooltip'] as String?
      ..navItems = (json['navItems'] as List<dynamic>)
          .map((e) =>
              UIBottomNavigationBarItem.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$UIBottomNavigationBarToJson(
        UIBottomNavigationBar instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'class_name': instance.class_name,
      'bgColor': instance.bgColor,
      'fgColor': instance.fgColor,
      'tooltip': instance.tooltip,
      'navItems': instance.navItems.map((e) => e.toJson()).toList(),
    };
