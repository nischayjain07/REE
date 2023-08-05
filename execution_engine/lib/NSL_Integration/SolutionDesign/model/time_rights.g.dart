// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_rights.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeRights _$TimeRightsFromJson(Map<String, dynamic> json) {
  return TimeRights(
    informationRight: json['informationRight'] as bool? ?? false,
    decisionRight: json['decisionRight'] as bool? ?? false,
    executionRight: json['executionRight'] as bool? ?? false,
    rightHolderId: json['rightHolderId'] as int?,
    rightHolderType: json['rightHolderType'] as String?,
    rightHolderName: json['rightHolderName'] as String?,
    name: json['name'] as String?,
    conditionExpression: json['conditionExpression'] as String?,
    disableParentRoleAccess: json['disableParentRoleAccess'] as bool? ?? false,
    condition: json['condition'] != null ? TimeRightsCondition?.fromJson(json['condition'] as Map<String, dynamic>) : null,
  );
}

Map<String, dynamic> _$TimeRightsToJson(TimeRights instance) => <String, dynamic>{
      'informationRight': instance.informationRight,
      'decisionRight': instance.decisionRight,
      'executionRight': instance.executionRight,
      'rightHolderId': instance.rightHolderId,
      'rightHolderType': instance.rightHolderType,
      'rightHolderName': instance.rightHolderName,
      'name': instance.name,
      'conditionExpression': instance.conditionExpression,
      'disableParentRoleAccess': instance.disableParentRoleAccess,
      'condition': instance.condition?.toJson(),
    };
