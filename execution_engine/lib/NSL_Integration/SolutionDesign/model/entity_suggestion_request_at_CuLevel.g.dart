// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_suggestion_request_at_CuLevel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EntitySuggestionRequestAtCuLevel _$EntitySuggestionRequestAtCuLevelFromJson(Map<String, dynamic> json) {
  return EntitySuggestionRequestAtCuLevel(
    gsi: json['gsi'] as String?,
    cu: json['cu'] as String?,
    selectedEntityList: (json['selectedEntityList'] as List?)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$EntitySuggestionRequestAtCuLevelToJson(EntitySuggestionRequestAtCuLevel instance) =>
    <String, dynamic>{
      'gsi': instance.gsi,
      'cu': instance.cu,
      'selectedEntityList': instance.selectedEntityList,
    };
