// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uiElement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIElement _$UIElementFromJson(Map<String, dynamic> json) {
  return UIElement(
    name: json['name'] as String?,
    uiElement: json['uiElement'] as String?,
    dataType: json['dataType'] as String?,
    isMulti: json['isMulti'] as bool?,
    properties: (json['properties'] as List?)?.map((e) => e as String)?.toList(),
    source: json['source'] as String?,
  );
}

Map<String, dynamic> _$UIElementToJson(UIElement instance) => <String, dynamic>{
      'name': instance.name,
      'dataType': instance.dataType,
      'isMulti': instance.isMulti,
      'uiElement': instance.uiElement,
      'source': instance.source,
      'properties': instance.properties,
    };
