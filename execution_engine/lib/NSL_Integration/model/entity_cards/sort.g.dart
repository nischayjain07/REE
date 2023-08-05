// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sort.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

enum Order { ASC, DESC }

const _$OrderEnumMap = {Order.ASC: 'ASC', Order.DESC: 'FIELD'};

Sort _$SortFromJson(Map<String, dynamic> json) {
  return Sort(
    fieldName: json['fieldName'] as String?,
    // order: _$OrderEnumMap.entries.singleWhere((e) => e.value == json['order'])?.key,
  );
}

Map<String, dynamic> _$SortToJson(Sort instance) => <String, dynamic>{
      'fieldName': instance.fieldName,
      // 'order': _$OrderEnumMap[instance.order],
    };
