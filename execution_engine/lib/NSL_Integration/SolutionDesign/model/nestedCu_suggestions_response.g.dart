// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nestedCu_suggestions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NestedCuSuggestionResponse _$NestedCuSuggestionResponseFromJson(Map<String, dynamic> json) {
  return NestedCuSuggestionResponse(
      message: json['message'] as String?,
      result:
          (json['result'] as List?)?.map((e) => CU.fromJson(e as Map<String, dynamic>))?.toList() ??
              [],
      status: json['status'] as int?);
}

Map<String, dynamic> _$NestedCuSuggestionResponseToJson(NestedCuSuggestionResponse instance) => <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'result': instance.result?.map((e) => e?.toJson())?.toList(),
    };
