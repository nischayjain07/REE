import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/group.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/users_under_role.dart';

part 'role_my_collection.g.dart';

@JsonSerializable(explicitToJson: true)
class Agents {
  int? id;
  String? name;
  String? description;
  bool? isEnabled;
  bool? isAdmin;

  List<User>? users;
  List<Agents>? roles;
  List<Group>? groups;
  Agents? parentRole;
  Agents? parentOrgUnit;

  Agents(
      {this.id,
      this.name,
      this.description,
      this.groups,
      this.isAdmin,
      this.isEnabled,
      this.parentRole,
      this.parentOrgUnit,
      this.users,
      this.roles});

  factory Agents.fromJson(Map<String, dynamic> json) => _$AgentsFromJson(json);

  Map<String, dynamic> toJson() => _$AgentsToJson(this);
}
