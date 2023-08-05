import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/agents_roles.dart';

part 'agents_suggestions.g.dart';

@JsonSerializable(explicitToJson: true)
class AgentsSuggestionResponse {
  String? GSI;

  List<AgentRoles>? roles;

  AgentsSuggestionResponse({this.GSI, this.roles});

  factory AgentsSuggestionResponse.fromJson(Map<String, dynamic> json) => _$AgentsSuggestionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AgentsSuggestionResponseToJson(this);
}
