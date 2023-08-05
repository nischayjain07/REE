// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_trigger_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NextTriggerSet _$NextTriggerSetFromJson(Map<String, dynamic> json) {
  return NextTriggerSet(
    index: json['index'] as int?,
    nextCUId: json['nextCUId'] as int?,
    nextCUName: json['nextCUName'] as String?,
    dsdNextCUId: json['dsdNextCUId'] as String?,
  );
}

Map<String, dynamic> _$NextTriggerSetToJson(NextTriggerSet instance) => <String, dynamic>{
      'index': instance.index,
      'nextCUId': instance.nextCUId,
      'nextCUName': instance.nextCUName,
      'dsdNextCUId': instance.dsdNextCUId,
    };
