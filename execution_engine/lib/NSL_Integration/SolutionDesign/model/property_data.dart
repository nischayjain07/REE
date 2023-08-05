import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/property_constant.dart';

part 'property_data.g.dart';

@JsonSerializable(explicitToJson: true)
class PropertyData {
  @JsonKey(nullable: true, name: 'CONSTANT')
  PropertyConstant? constant;

  PropertyData({this.constant});

  factory PropertyData.fromJson(Map<String, dynamic> json) => _$PropertyDataFromJson(json);

  Map<String, dynamic> toJson() => _$PropertyDataToJson(this);
}
