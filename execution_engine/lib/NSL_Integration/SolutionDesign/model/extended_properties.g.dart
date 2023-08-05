part of 'extended_properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExtendedProperties _$ExtendedPropertiesFromJson(Map<String, dynamic> json) {
  return ExtendedProperties(
    sourceValues: (json['sourceValues'] as List?)?.map((e) =>   SourceValuesDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ExtendedPropertiesToJson(ExtendedProperties instance) => <String, dynamic>{
      'sourceValues': instance.sourceValues?.map((e) => e?.toJson())?.toList(),
    };
