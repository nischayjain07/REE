// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_bottom_navigation_bar_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIBottomNavigationBarItem _$UIBottomNavigationBarItemFromJson(
        Map<String, dynamic> json) =>
    UIBottomNavigationBarItem()
      ..bgColor = json['bgColor'] as int
      ..tooltip = json['tooltip'] as String?
      ..label = json['label'] as String?
      ..iconUrl = json['iconUrl'] as String
      ..activeIconUrl = json['activeIconUrl'] as String?
      ..iconText = json['iconText'] as String?;

Map<String, dynamic> _$UIBottomNavigationBarItemToJson(
        UIBottomNavigationBarItem instance) =>
    <String, dynamic>{
      'bgColor': instance.bgColor,
      'tooltip': instance.tooltip,
      'label': instance.label,
      'iconUrl': instance.iconUrl,
      'activeIconUrl': instance.activeIconUrl,
      'iconText': instance.iconText,
    };
