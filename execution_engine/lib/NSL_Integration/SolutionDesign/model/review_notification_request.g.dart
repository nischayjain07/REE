// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_notification_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewRequest _$ReviewRequestFromJson(Map<String, dynamic> json) {
  return ReviewRequest(
    title: json['title'] as String?,
    content: json['content'] as String?,
    actionableContent: json['actionableContent'] as Map<String, dynamic>,
    notificationChannels: (json['notificationChannels'] as List?)?.map((e) => e as String)?.toList(),
    targetUserId: (json['targetUserId'] as List?)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ReviewRequestToJson(ReviewRequest instance) => <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'actionableContent': instance.actionableContent,
      'targetUserId': instance.targetUserId,
      'notificationChannels': instance.notificationChannels,
    };
