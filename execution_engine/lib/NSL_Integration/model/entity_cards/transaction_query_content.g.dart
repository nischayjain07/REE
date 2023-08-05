part of 'transaction_query_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionQueryContent _$TransactionQueryContentFromJson(Map<String, dynamic> json) {
  return TransactionQueryContent(
    data: (json['data'] as List?)?.map((e) => TxnGeneralEntity?.fromJson(e as Map<String, dynamic>)).toList(),
    // aggregates: json['aggregates'] as Map<String, dynamic>?,
  );
}

Map<String, dynamic> _$TransactionQueryContentToJson(TransactionQueryContent instance) => <String, dynamic>{
      'data': instance.data?.map((e) => e?.toJson())?.toList(),
      //'aggregates': instance.aggregates,
    };
