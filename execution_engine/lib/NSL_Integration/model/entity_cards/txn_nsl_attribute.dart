import 'package:json_annotation/json_annotation.dart';

part 'txn_nsl_attribute.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class TxnNslAttribute {
  @JsonKey(nullable: true)
  String? name;
  @JsonKey(nullable: true)
  int? nslAttributeID;
  @JsonKey(nullable: true)
  List? values;
  @JsonKey(nullable: true)
  String? displayName;
  // @JsonKey(nullable: true)
  // Result? result;
  // @JsonKey(nullable: true)
  // TxnGeneralEntity? txnGeneralEntity;

  TxnNslAttribute({
    this.name,
    this.nslAttributeID,
    this.values,
    this.displayName,
    //this.result,
    // this.txnGeneralEntity
  });

  factory TxnNslAttribute.fromJson(Map<String, dynamic> json) => _$TxnNslAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$TxnNslAttributeToJson(this);
}
