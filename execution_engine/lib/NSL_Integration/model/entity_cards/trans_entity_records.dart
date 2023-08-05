import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/entity_cards/txn_nsl_attribute.dart';

part 'trans_entity_records.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class TransEntityRecords {
  @JsonKey(nullable: true)
  List<TxnNslAttribute?>? txnNslAttribute;

  TransEntityRecords({this.txnNslAttribute});

  factory TransEntityRecords.fromJson(Map<String, dynamic> json) => _$TransEntityRecordsFromJson(json);

  Map<String, dynamic> toJson() => _$TransEntityRecordsToJson(this);
}
