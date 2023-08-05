import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/tnx_nsl_attribute.dart';

part 'trans_entity_records.g.dart';

@JsonSerializable(explicitToJson: true)
class TransEntityRecords {
  @JsonKey(nullable: true)
  List<TxnNslAttribute>? txnNslAttribute;
  @JsonKey(nullable: true)
  int? generalEntityID;

  TransEntityRecords({this.txnNslAttribute, this.generalEntityID});

  factory TransEntityRecords.fromJson(Map<String, dynamic> json) => _$TransEntityRecordsFromJson(json);

  Map<String, dynamic> toJson() => _$TransEntityRecordsToJson(this);
}
