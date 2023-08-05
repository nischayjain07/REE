import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/target_attribute_details.dart';

part 'target_cu_suggestions_response.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class TargetCUAttributeSuggestionResponse {
  String? gsi;
  List<TargetAttributeDetails>? result;

  TargetCUAttributeSuggestionResponse({this.gsi, this.result});

  factory TargetCUAttributeSuggestionResponse.fromJson(Map<String, dynamic> json) =>
      _$TargetCUSuggestionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TargetCUSuggestionResponseToJson(this);
}
