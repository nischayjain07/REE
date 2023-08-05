import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/txn_general_entity.dart';

part 'change_driver_data.g.dart';

@JsonSerializable(explicitToJson: true)
class ChangeDriverData {
  @JsonKey(nullable: true, name: 'TYPE', defaultValue: 'TxnGeneralEntity')
  String? type;
  @JsonKey(nullable: true, name: 'DATA')
  TxnGeneralEntity? data;

  ChangeDriverData({this.type, this.data});

  factory ChangeDriverData.fromJson(Map<String, dynamic> json) => _$ChangeDriverDataFromJson(json);

  Map<String, dynamic> toJson() => _$ChangeDriverDataToJson(this);
}
