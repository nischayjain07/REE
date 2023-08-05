import 'package:json_annotation/json_annotation.dart';

part 'attribute_suggestion_request.g.dart';

@JsonSerializable(explicitToJson: true)
class AttributeSuggestionRequest {
  String? gsi;
  String? cu;
  String? entity;
  @JsonKey(defaultValue: [])
  List<String>? selectedAttributesList;

  AttributeSuggestionRequest({this.gsi, this.cu, this.entity, this.selectedAttributesList});

  factory AttributeSuggestionRequest.fromJson(Map<String, dynamic> json) => _$AttributeSuggestionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AttributeSuggestionRequestToJson(this);
}
