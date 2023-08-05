import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/attribute_details_target_cu_suggestion.dart';

part 'target_cu_suggestions_request.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class TargetCUAttributeSuggestionRequest {
  Map<String, String>? gsi;
  String? cuName;
  String? cuId;
  String? hostPortURL;
  List<SourceAttributeDetails>? entityAttributeList;

  TargetCUAttributeSuggestionRequest({this.gsi, this.hostPortURL, this.cuName, this.cuId, this.entityAttributeList});

  factory TargetCUAttributeSuggestionRequest.fromJson(Map<String, dynamic> json) =>
      _$TargetCUAttributeSuggestionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TargetCUAttributeSuggestionRequestToJson(this);
}
