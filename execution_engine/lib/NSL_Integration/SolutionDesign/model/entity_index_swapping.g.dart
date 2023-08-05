// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_index_swapping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EntityReassignmentObject _$EntityReassignmentObjectFromJson(Map<String, dynamic> json) {
  return EntityReassignmentObject(
   status: json['status'] as int?,
    message: json['message'] as String?,
    result:
      json['result'] == null ? null : GSI.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EntityReassignmentObjectToJson(EntityReassignmentObject instance) => <String, dynamic>{
 'status':instance.status,
  'message':instance.message,
  'result': instance.result?.toJson(),
};
