import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/trans_entity_records.dart';

part 'txn_general_entity.g.dart';

@JsonSerializable(explicitToJson: true)
class TxnGeneralEntity {
  @JsonKey(nullable: true)
  String? name;
  @JsonKey(nullable: true)
  String? dsdId;
  @JsonKey(nullable: true)
  int? generalEntityID;
  @JsonKey(nullable: true)
  List<TransEntityRecords>? transEntityRecords;
  List<dynamic>? properties;

  TxnGeneralEntity({this.name, this.dsdId, this.transEntityRecords, this.generalEntityID, this.properties});

  factory TxnGeneralEntity.fromJson(Map<String, dynamic> json) => _$TxnGeneralEntityFromJson(json);

  Map<String, dynamic> toJson() => _$TxnGeneralEntityToJson(this);
}
