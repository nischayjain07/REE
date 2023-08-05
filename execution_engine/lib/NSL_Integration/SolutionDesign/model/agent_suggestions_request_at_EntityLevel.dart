import 'package:json_annotation/json_annotation.dart';

part 'agent_suggestions_request_at_EntityLevel.g.dart';

@JsonSerializable(explicitToJson: true)
class AgentsSuggestionRequestAtEntityLevel {
  String? book;
  String? gsi;
  String? cu;
  String? entity;
  String? tenant;
  String? hostPortURL;
  @JsonKey(defaultValue: [])
  List<String>? selectedRoleList;

  AgentsSuggestionRequestAtEntityLevel(
      {this.book, this.gsi, this.cu, this.entity, this.selectedRoleList, this.hostPortURL, this.tenant});

  factory AgentsSuggestionRequestAtEntityLevel.fromJson(Map<String, dynamic> json) =>
      _$AgentsSuggestionRequestAtEntityLevelFromJson(json);

  Map<String, dynamic> toJson() => _$AgentsSuggestionRequestAtEntityLevelToJson(this);
}
