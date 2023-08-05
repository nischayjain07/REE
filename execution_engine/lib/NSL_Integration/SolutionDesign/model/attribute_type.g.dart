// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttributeType _$AttributeTypeFromJson(Map<String, dynamic> json) {
  return AttributeType(
    type: json['type'] as String?,
    nestedNslDataTypeProperties: json['nestedNslDataTypeProperties'],
    properties: Properties.fromJson(json['properties'] as Map<String, dynamic>),
    extendedProperties: ExtendedProperties.fromJson(json['extendedProperties'] as Map<String, dynamic>),
    uiElement: AttributeUiControlDTO.fromJson(json['uiElement'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AttributeTypeToJson(AttributeType instance) => <String, dynamic>{
      'type': instance.type,
      'nestedNslDataTypeProperties': instance.nestedNslDataTypeProperties,
      'properties': instance.properties?.toJson(),
      'uiElement': instance.uiElement?.toJson(),
      'extendedProperties': instance.extendedProperties?.toJson(),
    };
