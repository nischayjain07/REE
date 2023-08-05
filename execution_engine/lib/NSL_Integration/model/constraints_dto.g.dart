// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constraints_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConstraintsDTO _$ConstraintsDTOFromJson(Map<String, dynamic> json) {
  return ConstraintsDTO(
    name: json['name'] as String?,
    properties: json['constraintProperties'] == null
        ? null
        : ConstraintsPropertiesDTO?.fromJson(json['constraintProperties'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ConstraintsDTOToJson(ConstraintsDTO instance) => <String, dynamic>{
      'name': instance.name,
      'properties': instance.properties?.toJson(),
    };
