import 'package:json_annotation/json_annotation.dart';

part 'timeRightsCondition.g.dart';

@JsonSerializable()
class TimeRightsCondition {
  String? fromDateTime;
  List? predicates;
  String? toDateTime;
  @JsonKey(defaultValue: 'SOLUTIONS_INFO_RIGHTS')
  String? userRight;

  TimeRightsCondition({this.fromDateTime, this.predicates, this.toDateTime, this.userRight});

  factory TimeRightsCondition.fromJson(Map<String, dynamic> json) => _$TimeRightsConditionFromJson(json);

  Map<String, dynamic> toJson() => _$TimeRightsConditionToJson(this);
}
