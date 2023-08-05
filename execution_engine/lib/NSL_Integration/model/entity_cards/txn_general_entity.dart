import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/entity_cards/trans_entity_records.dart';

part 'txn_general_entity.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class TxnGeneralEntity {
  @JsonKey(nullable: true)
  String? name;
  // @JsonKey(nullable: true)
  // int? generalEntityID;
  @JsonKey(nullable: true)
  List<TransEntityRecords?>? transEntityRecords;
  @JsonKey(nullable: true)
  int? id;

  TxnGeneralEntity(
      {this.name,
      // this.generalEntityID,
      this.transEntityRecords,
      this.id});

  factory TxnGeneralEntity.fromJson(Map<String, dynamic> json) => _$TxnGeneralEntityFromJson(json);

  Map<String, dynamic> toJson() => _$TxnGeneralEntityToJson(this);
}
