import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/target_entity_details.dart';

part 'target_cu_entity_suggestions_response.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class TargetCUEntitySuggestionResponse {
  String? gsi;
  List<TargetEntityDetails>? result;

  TargetCUEntitySuggestionResponse({this.gsi, this.result});

  factory TargetCUEntitySuggestionResponse.fromJson(Map<String, dynamic> json) =>
      _$TargetCUEntitySuggestionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TargetCUEntitySuggestionResponseToJson(this);
}
