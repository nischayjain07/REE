// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeRightsCondition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeRightsCondition _$TimeRightsConditionFromJson(Map<String, dynamic> json) {
  return TimeRightsCondition(
    fromDateTime: json['fromDateTime'] as String?,
    toDateTime: json['toDateTime'] as String?,
    userRight: json['userRight'] as String?,
    predicates: json['predicates'] as List?,
  );
}

Map<String, dynamic> _$TimeRightsConditionToJson(TimeRightsCondition instance) => <String, dynamic>{
      'predicates': instance.predicates,
      'toDateTime': instance.toDateTime,
      'userRight': instance.userRight,
      'fromDateTime': instance.fromDateTime,
    };
