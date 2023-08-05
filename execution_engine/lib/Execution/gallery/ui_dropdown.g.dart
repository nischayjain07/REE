// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_dropdown.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIDropDown _$UIDropDownFromJson(Map<String, dynamic> json) => UIDropDown()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
  ..decoration =
      json['decoration'] == null ? null : UIInputDecoration.fromJson(json['decoration'] as Map<String, dynamic>)
  ..textStyle = json['textStyle'] == null ? null : UITextStyle.fromJson(json['textStyle'] as Map<String, dynamic>)
  ..menuElevation = json['menuElevation'] as int?
  ..height = json['height'] as double?
  ..width = json['width'] as double?
  ..dropDownList = (json['dropDownList'] as List<dynamic>).map((e) => e).toList().cast<String>()
  ..value = json['value'] as String?
  ..inputItem = json['inputItem'] as String;

Map<String, dynamic> _$UIDropDownToJson(UIDropDown instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'decoration': instance.decoration?.toJson(),
      'menuElevation': instance.menuElevation,
      'textStyle': instance.textStyle?.toJson(),
      'height': instance.height,
      'width': instance.width,
      'dropDownList': instance.dropDownList.map((e) => e).toList().cast<String>(),
      'value': instance.value,
      'inputItem': instance.inputItem
    };
