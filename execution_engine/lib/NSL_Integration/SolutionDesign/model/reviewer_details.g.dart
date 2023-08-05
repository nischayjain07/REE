// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviewer_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewerDetails _$ReviewerDetailsFromJson(Map<String, dynamic> json) {
  return ReviewerDetails(
    name: json['name'] as String?,
    taskId: json['taskId'] as String?,
    status: json['status'] as String?,
    submittedTime: json['submittedTime'] as String?,
    completedTime: json['completedTime'] as String?,
    comments: (json['comments'] as List?)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ReviewerDetailsToJson(ReviewerDetails instance) => <String, dynamic>{
      'name': instance.name,
      'taskId': instance.taskId,
      'status': instance.status,
      'submittedTime': instance.submittedTime,
      'completedTime': instance.completedTime,
      'comments': instance.comments,
    };
