// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Layer _$LayerFromJson(Map<String, dynamic> json) {
  return Layer(
    type: json['type'] as String?,
    participatingItems: (json['participatingItems'] as List?)?.map((e) => ParticipatingItem.fromJson(e as Map<String, dynamic>)).toList(),
    id: json['id'] as int?,
    guid: json['guid'] as String?,
    label: json['label'] as String?,
    updatedAt: json['updatedAt'] as int?,
    ownerId: json['ownerId'] as int?,
    membershipList: json['membershipList'] as List?,
    entityList: (json['entityList'] as List?)?.map((dynamic e) => EntityList.fromJson(e as Map<String,dynamic>)).toList()

  );
}

Map<String, dynamic> _$LayerToJson(Layer instance) => <String, dynamic>{
      'type': instance.type,
      'participatingItems': instance.participatingItems?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'ownerId': instance.ownerId,
      'guid': instance.guid,
      'label': instance.label,
      'updatedAt': instance.updatedAt,
      'membershipList': instance.membershipList,
      'entityList' : instance.entityList?.map((e) => e.toJson()).toList()
    };
