part of 'transaction_query_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionQueryRequest _$TransactionQueryRequestFromJson(Map<String, dynamic> json) {
  return TransactionQueryRequest(
    entitiesList: (json['entitiesList'] as List?)?.map((e) => e as String)?.toList(),
    entityIdsList: (json['entityIdsList'] as List?)?.map((e) => e as int)?.toList(),
    groupBy:
        (json['groupBy'] as List?)?.map((e) => GroupBy.fromJson(e as Map<String, dynamic>))?.toList(),
    sort: (json['sort'] as List?)?.map((e) => Sort.fromJson(e as Map<String, dynamic>)).toList(),
    searchQuery: Query.fromJson(json['pageable'] as Map<String, dynamic>),
    attributesList: (json['attributesList'] as List?)?.map((e) => e as String)?.toList(),
    includeFields: (json['includeFields'] as List?)?.map((e) => e as String)?.toList(),
    excludeFields: (json['excludeFields'] as List?)?.map((e) => e as String)?.toList(),
    searchQueryValue: json['searchQueryValue'] as String?,
    inputOutputMapping: json['inputOutputMapping'] as Map<String, String>?,
    functions: (json['functions'] as List?)
        ?.map((e) =>  NSLFunction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    conditionalOutputList: (json['conditionalOutputList'] as List?)
        ?.map((e) =>  ConditionalOutput.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$TransactionQueryRequestToJson(TransactionQueryRequest instance) => <String, dynamic>{
      'entitiesList': instance.entitiesList,
      'entityIdsList': instance.entityIdsList,
      'groupBy': instance.groupBy?.map((e) => e?.toJson())?.toList(),
      'sort': instance.sort?.map((e) => e?.toJson())?.toList(),
      'searchQuery': instance.searchQuery?.toJson(),
      'attributesList': instance.attributesList,
      'includeFields': instance.includeFields,
      'excludeFields': instance.excludeFields,
      'searchQueryValue': instance.searchQueryValue,
      'inputOutputMapping': instance.inputOutputMapping,
      'functions': instance.functions?.map((e) => e?.toJson())?.toList(),
      'conditionalOutputList': instance.conditionalOutputList?.map((e) => e?.toJson())?.toList()
    };
