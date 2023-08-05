import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/timeRightsCondition.dart';

part 'time_rights.g.dart';

@JsonSerializable()
class TimeRights {
  @JsonKey(defaultValue: false)
  bool? informationRight;
  @JsonKey(defaultValue: false)
  bool? decisionRight;
  @JsonKey(defaultValue: false)
  bool? executionRight;

  int? rightHolderId;

  String? rightHolderType;

  String? rightHolderName;

  String? name;

  String? conditionExpression;

  @JsonKey(defaultValue: false)
  bool? disableParentRoleAccess;

  TimeRightsCondition? condition;

  TimeRights({
    this.informationRight,
    this.decisionRight,
    this.executionRight,
    this.rightHolderId,
    this.rightHolderType,
    this.rightHolderName,
    this.condition,
    this.name,
    this.conditionExpression,
    this.disableParentRoleAccess,
  });

  factory TimeRights.fromJson(Map<String, dynamic> json) => _$TimeRightsFromJson(json);

  Map<String, dynamic> toJson() => _$TimeRightsToJson(this);
}
