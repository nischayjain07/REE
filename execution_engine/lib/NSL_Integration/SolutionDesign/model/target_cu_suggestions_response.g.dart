// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_cu_suggestions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TargetCUAttributeSuggestionResponse _$TargetCUSuggestionResponseFromJson(Map<String, dynamic> json) {
  return TargetCUAttributeSuggestionResponse(
    gsi: json['gsi'] as String?,
    result: (json['result'] as List?)
        ?.map((e) => TargetAttributeDetails?.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TargetCUSuggestionResponseToJson(TargetCUAttributeSuggestionResponse instance) =>
    <String, dynamic>{
      'gsi': instance.gsi,
      'result': instance.result?.map((e) => e?.toJson())?.toList(),
    };
