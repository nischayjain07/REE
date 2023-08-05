import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/reservedAction_result.dart';

part 'all_reserved_action_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ReservedActionResponse {
  int? status;

  String? message;

  ReservedActionResult? result;

  ReservedActionResponse({
    this.status,
    this.message,
    this.result,
  });

  factory ReservedActionResponse.fromJson(Map<String, dynamic> json) => _$ReservedActionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReservedActionResponseToJson(this);
}
