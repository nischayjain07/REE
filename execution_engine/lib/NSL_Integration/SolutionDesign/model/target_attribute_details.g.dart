// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_attribute_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TargetAttributeDetails _$TargetAttributeDetailsFromJson(Map<String, dynamic> json) {
  return TargetAttributeDetails(
    cu: json['cu'] as String?,
    entity: json['entity'] as String?,
    attribute: json['attribute'] as String?,
    confidence: json['confidence'] as int?,
    targetContextualId: json['targetContextualId'] as String?,
    targetContextualName: json['targetContextualName'] as String?,
    dldId: json['dldId'] as String?,
    formula: json['formula'] as String?,
    formulaArray: json['formulaArray'] as String?,
  );
}

Map<String, dynamic> _$TargetAttributeDetailsToJson(TargetAttributeDetails instance) => <String, dynamic>{
      'cu': instance.cu,
      'entity': instance.entity,
      'attribute': instance.attribute,
      'confidence': instance.confidence,
      'targetContextualId': instance.targetContextualId,
      'targetContextualName': instance.targetContextualName,
      'dldId': instance.dldId,
      'formula': instance.formula,
      'formulaArray': instance.formulaArray,
    };
