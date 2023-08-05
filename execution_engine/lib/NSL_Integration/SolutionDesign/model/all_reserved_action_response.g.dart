// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_reserved_action_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservedActionResponse _$ReservedActionResponseFromJson(Map<String, dynamic> json) {
  return ReservedActionResponse(
    status: json['status'] as int?,
    message: json['message'] as String?,
    result: ReservedActionResult?.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ReservedActionResponseToJson(ReservedActionResponse instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result?.toJson(),
    };
