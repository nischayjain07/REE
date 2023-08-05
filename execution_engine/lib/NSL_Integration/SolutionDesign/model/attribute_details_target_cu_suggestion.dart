import 'package:json_annotation/json_annotation.dart';

part 'attribute_details_target_cu_suggestion.g.dart';

@JsonSerializable(nullable: true)
class SourceAttributeDetails {
  String? entityName;
  String? attributeName;

  SourceAttributeDetails({this.entityName, this.attributeName});

  factory SourceAttributeDetails.fromJson(Map<String, dynamic> json) => _$SourceAttributeDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$SourceAttributeDetailsToJson(this);
}
