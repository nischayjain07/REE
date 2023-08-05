// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_entities_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllEntityResponse _$AllEntityResponseFromJson(Map<String, dynamic> json) {
  return AllEntityResponse(
    status: json['status'] as int?,
    message: json['message'] as String?,
    result: json['result'] == null ? null : AllEntityResult.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AllEntityResponseToJson(AllEntityResponse instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result?.toJson(),
    };
