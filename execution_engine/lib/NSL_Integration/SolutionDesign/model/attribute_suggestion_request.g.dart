// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_suggestion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttributeSuggestionRequest _$AttributeSuggestionRequestFromJson(Map<String, dynamic> json) {
  return AttributeSuggestionRequest(
    gsi: json['gsi'] as String?,
    cu: json['cu'] as String?,
    entity: json['entity'] as String?,
    selectedAttributesList: (json['selectedAttributesList'] as List?)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$AttributeSuggestionRequestToJson(AttributeSuggestionRequest instance) => <String, dynamic>{
      'gsi': instance.gsi,
      'cu': instance.cu,
      'entity': instance.entity,
      'selectedAttributesList': instance.selectedAttributesList,
    };
