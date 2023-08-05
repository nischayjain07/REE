// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_cu_entity_suggestions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TargetCUEntitySuggestionResponse _$TargetCUEntitySuggestionResponseFromJson(Map<String, dynamic> json) {
  return TargetCUEntitySuggestionResponse(
    gsi: json['gsi'] as String?,
    result: (json['result'] as List?)
        ?.map((e) => TargetEntityDetails?.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TargetCUEntitySuggestionResponseToJson(TargetCUEntitySuggestionResponse instance) =>
    <String, dynamic>{
      'gsi': instance.gsi,
      'result': instance.result?.map((e) => e?.toJson())?.toList(),
    };
