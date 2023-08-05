// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cu_suggestions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CuSuggestionResponse _$CuSuggestionResponseFromJson(Map<String, dynamic> json) {
  return CuSuggestionResponse(
    GSI: json['GSI'] as String?,
    Industry: json['Industry'] as String?,
    result: (json['result'] as List?)?.map((e) =>   CU.fromJson(e as Map<String, dynamic>))?.toList(),
  );
}

Map<String, dynamic> _$CuSuggestionResponseToJson(CuSuggestionResponse instance) => <String, dynamic>{
      'GSI': instance.GSI,
      'Industry': instance.Industry,
      'result': instance.result?.map((e) => e?.toJson())?.toList(),
    };
