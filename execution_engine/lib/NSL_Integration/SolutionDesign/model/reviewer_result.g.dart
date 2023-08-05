// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviewer_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewerResult _$ReviewerResultFromJson(Map<String, dynamic> json) {
  return ReviewerResult(
    message: json['message'] as String?,
    result:
        (json['result'] as List?)?.map((e) =>   Reviewer.fromJson(e as Map<String, dynamic>))?.toList(),
    status: json['status'] as int?,
  );
}

Map<String, dynamic> _$ReviewerResultToJson(ReviewerResult instance) => <String, dynamic>{
      'message': instance.message,
      'result': instance.result?.map((e) => e?.toJson())?.toList(),
      'status': instance.status,
    };
