// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_reserved_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservedAction _$ReservedActionFromJson(Map<String, dynamic> json) {
  return ReservedAction(
    id: json['id'] as int?,
    status: json['status'] as String?,
    name: json['name'] as String?,
    isReserved: json['isReserved'] as bool?,
    dsdId: json['dsdId'] as String?,
  );
}

Map<String, dynamic> _$ReservedActionToJson(ReservedAction instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'name': instance.name,
      'isReserved': instance.isReserved,
      'dsdId': instance.dsdId,
    };
