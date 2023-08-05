// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_entities_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllEntityContent _$AllEntityContentFromJson(Map<String, dynamic> json) {
  return AllEntityContent(
    name: json['name'] as String?,
    isReserved: json['isReserved'] as bool?,
    status: json['status'] as String?,
    id: json['id'] as int?,
    dsdId: json['dsdId'] as String?,
    version: json['version'] as String?,
    description: json['description'] as String?,
    displayName: json['displayName'] as String?,
    ownerId: json['ownerId'] as int?,
    masterId: json['masterId'] as int?,
    nslAttributes: (json['nslAttributes'] as List?)
        ?.map((e) => NslAttributes.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    cardIdList: (json['cardIdList'] as List?)
        ?.map((e) => e.toString())
        ?.toList(),
  );
}

Map<String, dynamic> _$AllEntityContentToJson(AllEntityContent instance) => <String, dynamic>{
      'name': instance.name,
      'isReserved': instance.isReserved,
      'status': instance.status,
      'id': instance.id,
      'dsdId': instance.dsdId,
      'version': instance.version,
      'description': instance.description,
      'displayName': instance.displayName,
      'ownerId': instance.ownerId,
      'masterId': instance.masterId,
      'nslAttributes': instance.nslAttributes?.map((e) => e?.toJson())?.toList(),
    };
