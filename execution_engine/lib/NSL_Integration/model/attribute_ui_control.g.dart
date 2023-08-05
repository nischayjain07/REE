// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_ui_control.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttributeUiControlDTO _$AttributeUiControlDTOFromJson(Map<String, dynamic> json) {
  return AttributeUiControlDTO(
    name: json['name'] as String?,
    dataType: json['dataType'] as String?,
    source: json['source'] as String?,
    uiElement: json['uiElement'] as String?,
    isMulti: json['isMulti'] as bool?,
    properties: (json['properties'] as List?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$AttributeUiControlDTOToJson(AttributeUiControlDTO instance) => <String, dynamic>{
      'name': instance.name,
      'dataType': instance.dataType,
      'uiElement': instance.uiElement,
      'isMulti': instance.isMulti,
      'source': instance.source,
      'properties': instance.properties,
    };
