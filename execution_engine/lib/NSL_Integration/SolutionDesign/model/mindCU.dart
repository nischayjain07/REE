import 'package:json_annotation/json_annotation.dart';

part 'mindCU.g.dart';

@JsonSerializable()
class MindCU {
  int? id;

  String? nestedCUName;

  String? dsdGsiId;

  String? triggerCondition;

  int? gsiId;

  String? triggerConditionName;

  String? expression;

  @JsonKey(defaultValue: true)
  bool? alwaysTrigger;

  MindCU(
      {this.gsiId,
      this.triggerConditionName,
      this.nestedCUName,
      this.dsdGsiId,
      this.triggerCondition,
      this.id,
      this.expression,
      this.alwaysTrigger});

  factory MindCU.fromJson(Map<String, dynamic> json) => _$MindCUFromJson(json);

  Map<String, dynamic> toJson() => _$MindCUToJson(this);
}
