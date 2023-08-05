// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_entity_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TargetEntityDetails _$TargetEntityDetailsFromJson(Map<String, dynamic> json) {
  return TargetEntityDetails(
    cu: json['cu'] as String?,
    entity: json['entity'] as String?,
    targetContextualId: json['targetContextualId'] as String?,
    targetContextualName: json['targetContextualName'] as String?,
    dldId: json['dldId'] as String?,
  );
}

Map<String, dynamic> _$TargetEntityDetailsToJson(TargetEntityDetails instance) => <String, dynamic>{
      'cu': instance.cu,
      'entity': instance.entity,
      'targetContextualId': instance.targetContextualId,
      'targetContextualName': instance.targetContextualName,
      'dldId': instance.dldId,
    };
