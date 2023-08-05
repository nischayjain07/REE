// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publish_to_nsl_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublishToNSLResponse _$PublishToNSLResponseFromJson(Map<String, dynamic> json) {
  return PublishToNSLResponse(
    status: json['status'] as int?,
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$PublishToNSLResponseToJson(PublishToNSLResponse instance) => <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
