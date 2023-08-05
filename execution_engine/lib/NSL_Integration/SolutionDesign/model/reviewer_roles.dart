import 'package:json_annotation/json_annotation.dart';

part 'reviewer_roles.g.dart';

@JsonSerializable(explicitToJson: true)
class ReviewerRoles {
  String? name;

  String? description;

  bool? isEnabled;

  bool? isAdmin;

  int? id;

  ReviewerRoles({this.name, this.description, this.isEnabled, this.isAdmin, this.id});

  factory ReviewerRoles.fromJson(Map<String, dynamic> json) => _$ReviewerRolesFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewerRolesToJson(this);
}
