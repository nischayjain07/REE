import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/all_reserved_action.dart';

part 'reservedAction_result.g.dart';

@JsonSerializable(explicitToJson: true)
class ReservedActionResult {
  List<ReservedAction>? data;

  ReservedActionResult({
    this.data,
  });

  factory ReservedActionResult.fromJson(Map<String, dynamic> json) => _$ReservedActionResultFromJson(json);

  Map<String, dynamic> toJson() => _$ReservedActionResultToJson(this);
}
