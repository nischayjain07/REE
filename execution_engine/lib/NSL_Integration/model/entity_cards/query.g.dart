// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

const _$SearchOperatorTypeEnumMap = {
  SearchOperatorType.CONTAINS: 'CONTAINS',
  SearchOperatorType.EQUALS: 'EQUALS',
  SearchOperatorType.GT: 'GT',
  SearchOperatorType.GTE: 'GTE',
  SearchOperatorType.IN: 'IN',
  SearchOperatorType.LT: 'LT',
  SearchOperatorType.LTE: 'LTE',
  SearchOperatorType.NOT_EQUALS: 'NOT_EQUALS',
  SearchOperatorType.RANGE: 'RANGE',
  SearchOperatorType.REGEX: 'REGEX'
};

const _$OperationTypeEnumMap = {OperationType.AND: 'AND', OperationType.OR: 'OR'};

Query _$QueryFromJson(Map<String, dynamic> json) {
  return Query(
    searchQueryDepth: json['searchQueryDepth'] as int?,
    operationType: json['operationType'] != null
        ? _$OperationTypeEnumMap.entries.singleWhere((e) => e.value == json['operationType'])?.key
        : null,
    fieldName: json['fieldName'] as String?,
    searchOperatorType: json['searchOperatorType'] != null
        ? _$SearchOperatorTypeEnumMap.entries.singleWhere((e) => e.value == json['searchOperatorType'])?.key
        : null,
    values: json['values'] as List?,
    queries:
        (json['queries'] as List?)?.map((e) => Query.fromJson(e as Map<String, dynamic>)).toList(),
  );
}

Map<String, dynamic> _$QueryToJson(Query instance) => <String, dynamic>{
      'searchQueryDepth': instance.searchQueryDepth,
      'operationType': _$OperationTypeEnumMap[instance.operationType],
      'fieldName': instance.fieldName,
      'searchOperatorType': _$SearchOperatorTypeEnumMap[instance.searchOperatorType],
      'values': instance.values,
      'queries': instance.queries?.map((e) => e?.toJson())?.toList(),
    };
