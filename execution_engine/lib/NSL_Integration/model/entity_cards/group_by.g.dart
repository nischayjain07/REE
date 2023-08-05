// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_by.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

const _$TypeEnumMap = {Type.DATE_HISTOGRAM: 'DATE_HISTOGRAM', Type.FIELD: 'FIELD'};

GroupBy _$GroupByFromJson(Map<String, dynamic> json) {
  return GroupBy(
      fieldName: json['fieldName'] as String?,
      type: json['type'] != null ? _$TypeEnumMap.entries.singleWhere((e) => e.value == json['type'])?.key : null,
      sort: json['result'] == null ? null : Sort.fromJson(json['result'] as Map<String, dynamic>));
}

Map<String, dynamic> _$GroupByToJson(GroupBy instance) => <String, dynamic>{
      'fieldName': instance.fieldName,
      'type': _$TypeEnumMap[instance.type],
      'sort': instance.sort?.toJson()
    };
