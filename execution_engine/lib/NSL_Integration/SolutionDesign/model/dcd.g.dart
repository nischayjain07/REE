// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dcd.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dcd _$DcdFromJson(Map<String, dynamic> json) {
  return Dcd(
    sourceArray: (json['sourceArray'] as List)
            ?.map((e) =>   SourceArray.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        [],
    formulaArray: json['formulaArray'] as List ?? [],
    sourceContextualId: json['sourceContextualId'] as String?,
    targetContextualId: json['targetContextualId'] as String?,
    targetContextualName: json['targetContextualName'] as String?,
    sourceContextualName: json['sourceContextualName'] as String?,
    guid: json['guid'] as String?,
    id: json['id'] as int?,
    ownerId: json['ownerId'] as int?,
    updatedAt: json['updatedAt'] as int?,
    event: json['event'] as String?,
    formulaName: json['formulaName'] as String?,
    formula: json['formula'] as String?,
  );
}

Map<String, dynamic> _$DcdToJson(Dcd instance) => <String, dynamic>{
      'sourceArray': instance.sourceArray?.map((e) => e?.toJson())?.toList(),
      'formulaArray': instance.formulaArray,
      'sourceContextualId': instance.sourceContextualId,
      'targetContextualId': instance.targetContextualId,
      'targetContextualName': instance.targetContextualName,
      'sourceContextualName': instance.sourceContextualName,
      'event': instance.event,
      'id': instance.id,
      'guid': instance.guid,
      'ownerId': instance.ownerId,
      'updatedAt': instance.updatedAt,
      'formulaName': instance.formulaName,
      'formula': instance.formula,
    };
