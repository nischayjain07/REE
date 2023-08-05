import 'package:json_annotation/json_annotation.dart';

part 'target_entity_details.g.dart';

@JsonSerializable(nullable: true)
class TargetEntityDetails {
  String? cu;
  String? entity;
  String? targetContextualName;
  String? targetContextualId;
  String? dldId;

  TargetEntityDetails({this.cu, this.entity, this.dldId, this.targetContextualId, this.targetContextualName});

  factory TargetEntityDetails.fromJson(Map<String, dynamic> json) => _$TargetEntityDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$TargetEntityDetailsToJson(this);
}
