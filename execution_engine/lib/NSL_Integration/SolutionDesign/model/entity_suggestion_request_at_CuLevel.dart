import 'package:json_annotation/json_annotation.dart';

part 'entity_suggestion_request_at_CuLevel.g.dart';

@JsonSerializable(explicitToJson: true)
class EntitySuggestionRequestAtCuLevel {
  String? gsi;
  String? cu;
  @JsonKey(defaultValue: [])
  List<String>? selectedEntityList;

  EntitySuggestionRequestAtCuLevel({this.gsi, this.cu, this.selectedEntityList});

  factory EntitySuggestionRequestAtCuLevel.fromJson(Map<String, dynamic> json) =>
      _$EntitySuggestionRequestAtCuLevelFromJson(json);

  Map<String, dynamic> toJson() => _$EntitySuggestionRequestAtCuLevelToJson(this);
}
