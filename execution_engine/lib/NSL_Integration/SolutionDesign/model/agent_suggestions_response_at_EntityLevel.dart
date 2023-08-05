import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/agents_roles.dart';

part 'agent_suggestions_response_at_EntityLevel.g.dart';

@JsonSerializable(explicitToJson: true)
class AgentsSuggestionResponseAtEntityLevel {
  String? cuName;
  String? entityName;
  List<AgentRoles>? roles;

  AgentsSuggestionResponseAtEntityLevel({this.cuName, this.entityName, this.roles});

  factory AgentsSuggestionResponseAtEntityLevel.fromJson(Map<String, dynamic> json) =>
      _$AgentsSuggestionResponseAtEntityLevelFromJson(json);

  Map<String, dynamic> toJson() => _$AgentsSuggestionResponseAtEntityLevelToJson(this);
}
