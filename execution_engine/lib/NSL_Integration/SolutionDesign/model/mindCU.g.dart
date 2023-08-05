// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mindCU.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MindCU _$MindCUFromJson(Map<String, dynamic> json) {
  return MindCU(
      gsiId: json['gsiId'] as int?,
      triggerConditionName: json['triggerConditionName'] as String?,
      nestedCUName: json['nestedCUName'] as String?,
      triggerCondition: json['triggerCondition'] as String?,
      dsdGsiId: json['dsdGsiId'] as String?,
      id: json['id'] as int?,
      alwaysTrigger: json['alwaysTrigger'] as bool?);
}

Map<String, dynamic> _$MindCUToJson(MindCU instance) => <String, dynamic>{
      'id': instance.id,
      'nestedCUName': instance.nestedCUName,
      'triggerCondition': instance.triggerCondition,
      'gsiId': instance.gsiId,
      'dsdGsiId': instance.dsdGsiId,
      'triggerConditionName': instance.triggerConditionName,
      'alwaysTrigger': instance.alwaysTrigger,
    };
