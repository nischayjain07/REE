import 'package:json_annotation/json_annotation.dart';

part 'target_attribute_details.g.dart';

@JsonSerializable(nullable: true)
class TargetAttributeDetails {
  String? cu;
  String? entity;
  String? attribute;
  String? targetContextualName;
  String? targetContextualId;
  int? confidence;
  String? formula;
  String? formulaArray;
  String? dldId;

  TargetAttributeDetails(
      {this.cu,
      this.entity,
      this.attribute,
      this.confidence,
      this.dldId,
      this.formula,
      this.formulaArray,
      this.targetContextualId,
      this.targetContextualName});

  factory TargetAttributeDetails.fromJson(Map<String, dynamic> json) => _$TargetAttributeDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$TargetAttributeDetailsToJson(this);
}
