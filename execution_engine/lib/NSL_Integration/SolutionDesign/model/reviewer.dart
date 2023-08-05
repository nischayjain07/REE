import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/reviewer_roles.dart';

part 'reviewer.g.dart';

@JsonSerializable(explicitToJson: true)
class Reviewer {
  String? name;

  String? email;

  bool? isEnabled;

  int? id;

  dynamic guid;

  List<ReviewerRoles>? roles;

  Map<String, String>? userPreferences;

  Map<String, dynamic>? manager;

  int? ownerId;

  int? createdAt;

  int? updatedAt;

  Reviewer(
      {this.name,
      this.email,
      this.createdAt,
      this.guid,
      this.id,
      this.isEnabled,
      this.ownerId,
      this.updatedAt,
      this.manager});

  factory Reviewer.fromJson(Map<String, dynamic> json) => _$ReviewerFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewerToJson(this);
}
