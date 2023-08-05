// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participating_items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ParticipatingItem _$ParticipatingItemFromJson(Map<String, dynamic> json) {
  return ParticipatingItem(
    isMultiValue: json['isMultiValue'] as bool?,
    item: json['item'] == null ? null : Item?.fromJson(json['item'] as Map<String, dynamic>),
    membershipCriteriaList: json['membershipCriteriaList'] as List?,
    conditionalPotentiality: json['conditionalPotentiality'] as List?,
    isInPotentiality: json['isInPotentiality'] as bool?,
    triggerConditionalPotentiality: json['triggerConditionalPotentiality'] as bool?,
    changeDriverMetaData: json['changeDriverMetaData'] as Map<String, dynamic>,
    id: json['id'] as int?,
    guid: json['guid'] as String?,
    name: json['name'] as String?,
    displayName: json['displayName'] as String?,
    status: json['status'] as String?,
    type: json['TYPE'] as String?,
    source: json['source'] as String?,
    isReserved: json['isReserved'] as bool?,
    nslAttributes: (json['nslAttributes'] as List)
        .map((e) => NslAttributes?.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ParticipatingItemToJson(ParticipatingItem instance) => <String, dynamic>{
      'isMultiValue': instance.isMultiValue,
      'item': instance.item?.toJson(),
      'membershipCriteriaList': instance.membershipCriteriaList,
      'conditionalPotentiality': instance.conditionalPotentiality,
      'isInPotentiality': instance.isInPotentiality,
      'triggerConditionalPotentiality': instance.triggerConditionalPotentiality,
      'changeDriverMetaData': instance.changeDriverMetaData,
      'id': instance.id,
      'guid': instance.guid,
      'nslAttributes': instance.nslAttributes?.map((e) => e.toJson()).toList(),
      'name': instance.name,
      'displayName': instance.displayName,
      'status': instance.status,
      'TYPE': instance.type,
      'source': instance.source,
      'isReserved': instance.isReserved,
    };
