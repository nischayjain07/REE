import 'package:execution_engine/NSL_Integration/model/entity_cards/txn_general_entity.dart';

part 'transaction_query_content.g.dart';

class TransactionQueryContent {
  List<TxnGeneralEntity>? data;
  // Map? aggregates;

  TransactionQueryContent({
    this.data,
    // this.aggregates
  });

  factory TransactionQueryContent.fromJson(Map<String, dynamic> json) => _$TransactionQueryContentFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionQueryContentToJson(this);
}
