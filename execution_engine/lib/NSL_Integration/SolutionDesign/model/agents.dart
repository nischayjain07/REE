import 'package:json_annotation/json_annotation.dart';

part 'agents.g.dart';

@JsonSerializable(explicitToJson: true)
class Agent {
  String? agentType;

  Agent({
    this.agentType,
  });

  factory Agent.fromJson(Map<String, dynamic> json) => _$AgentFromJson(json);

  Map<String, dynamic> toJson() => _$AgentToJson(this);
}
