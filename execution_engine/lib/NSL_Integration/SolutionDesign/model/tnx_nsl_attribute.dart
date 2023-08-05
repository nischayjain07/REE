import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/txn_general_entity.dart';

part 'tnx_nsl_attribute.g.dart';

@JsonSerializable(explicitToJson: true)
class TxnNslAttribute {
  @JsonKey(nullable: true)
  String? name;
  @JsonKey(nullable: true)
  String? dsdId;
  @JsonKey(nullable: true)
  List<String>? values;
  @JsonKey(nullable: true)
  List<String>? properties;
  @JsonKey(nullable: true)
  TxnGeneralEntity? txnGeneralEntity;
  @JsonKey(nullable: true)
  int? nslAttributeID;

  TxnNslAttribute({this.name, this.dsdId, this.values, this.properties, this.txnGeneralEntity, this.nslAttributeID});

  factory TxnNslAttribute.fromJson(Map<String, dynamic> json) => _$TxnNslAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$TxnNslAttributeToJson(this);
}
