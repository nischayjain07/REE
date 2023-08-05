import 'package:execution_engine/NSL_Integration/model/entity_cards/pageable_dto.dart';
import 'package:execution_engine/NSL_Integration/model/entity_cards/transaction_query_content.dart';

part 'transaction_query_result.g.dart';

class TransactionQueryResult {
  List<TransactionQueryContent?>? content;
  Pageable? pageable;
  int? total;

  TransactionQueryResult({
    this.content,
    this.pageable,
    this.total,
  });

  factory TransactionQueryResult.fromJson(Map<String, dynamic> json) => _$TransactionQueryResultFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionQueryResultToJson(this);
}
