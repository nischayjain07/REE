part of 'transaction_query_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionQueryResult _$TransactionQueryResultFromJson(Map<String, dynamic> json) {
  return TransactionQueryResult(
    content:
        (json['content'] as List?)?.map((e) => TransactionQueryContent?.fromJson(e as Map<String, dynamic>))?.toList(),
    pageable: Pageable?.fromJson(json['pageable'] as Map<String, dynamic>),
    total: json['total'] as int?,
  );
}

Map<String, dynamic> _$TransactionQueryResultToJson(TransactionQueryResult instance) => <String, dynamic>{
      'content': instance.content?.map((e) => e?.toJson())?.toList(),
      'pageable': instance.pageable?.toJson(),
      'total': instance.total,
    };
