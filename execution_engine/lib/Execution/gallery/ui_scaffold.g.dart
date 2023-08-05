// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_scaffold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIScaffold _$UIScaffoldFromJson(Map<String, dynamic> json) => UIScaffold()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
  ..isAppBar = json['isAppBar'] as bool?
  ..appBar = UIAppBar.fromJson(json['appBar'] as Map<String, dynamic>)
  ..backgroundColor = json['backgroundColor'] as int
  ..bottomNavigationBar = json['bottomNavigationBar'] == null
      ? null
      : UIBottomNavigationBar.fromJson(json['bottomNavigationBar'] as Map<String, dynamic>)
  ..drawer = json['drawer'] == null ? null : UIWidget.fromJson(json['drawer'] as Map<String, dynamic>)
  ..floatingActionButton = json['floatingActionButton'] == null
      ? null
      : UIWidget.fromJson(json['floatingActionButton'] as Map<String, dynamic>)
  ..floatingButtonSwitchValue = json['floatingButtonSwitchValue'] as bool
  ..bottomNavigationBarSwitchValue = json['bottomNavigationBarSwitchValue'] as bool
  ..drawerSwitchValue = json['drawerSwitchValue'] as bool
  ..pageName = json['pageName'] as String;

Map<String, dynamic> _$UIScaffoldToJson(UIScaffold instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'isAppBar': instance.isAppBar,
      'appBar': instance.appBar.toJson(),
      'backgroundColor': instance.backgroundColor,
      'bottomNavigationBar': instance.bottomNavigationBar?.toJson(),
      'drawer': instance.drawer?.toJson(),
      'floatingActionButton': instance.floatingActionButton?.toJson(),
      'floatingButtonSwitchValue': instance.floatingButtonSwitchValue,
      'bottomNavigationBarSwitchValue': instance.bottomNavigationBarSwitchValue,
      'drawerSwitchValue': instance.drawerSwitchValue,
      'pageName': instance.pageName,
    };
