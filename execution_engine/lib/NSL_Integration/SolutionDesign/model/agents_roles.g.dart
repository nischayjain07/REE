// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agents_roles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentRoles _$AgentRolesFromJson(Map<String, dynamic> json) {
  return AgentRoles(
    rightHolderId: json['rightHolderId'] as int?,
    rightHolderName: json['rightHolderName'] as String?,
    rightHolderType: json['rightHolderType'] as String?,
    confidence: json['confidence'] as int?,
    designTimeRights: TimeRights?.fromJson(json['designTimeRights'] as Map<String, dynamic>),
    txnTimeRights: TimeRights?.fromJson(json['txnTimeRights'] as Map<String, dynamic>),
    dldId: json['dldId'] as String?,
  );
}

Map<String, dynamic> _$AgentRolesToJson(AgentRoles instance) => <String, dynamic>{
      'rightHolderId': instance.rightHolderId,
      'rightHolderName': instance.rightHolderName,
      'rightHolderType': instance.rightHolderType,
      'confidence': instance.confidence,
      'designTimeRights': instance.designTimeRights?.toJson(),
      'txnTimeRights': instance.txnTimeRights?.toJson(),
      'dldId': instance.dldId,
    };
