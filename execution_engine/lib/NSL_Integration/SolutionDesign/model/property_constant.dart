import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/change_driver_data.dart';

part 'property_constant.g.dart';

@JsonSerializable(explicitToJson: true)
class PropertyConstant {
  @JsonKey(nullable: true)
  String? cuLayer;
  @JsonKey(nullable: true)
  int? slotItemIndex;
  @JsonKey(nullable: true)
  int? id;
  @JsonKey(nullable: true)
  ChangeDriverData? changeDriverData;

  PropertyConstant({this.cuLayer, this.slotItemIndex, this.changeDriverData, this.id});

  factory PropertyConstant.fromJson(Map<String, dynamic> json) => _$PropertyConstantFromJson(json);

  Map<String, dynamic> toJson() => _$PropertyConstantToJson(this);
}
