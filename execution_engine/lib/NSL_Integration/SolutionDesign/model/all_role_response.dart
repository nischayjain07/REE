import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/role_my_collection.dart';

part 'all_role_response.g.dart';

@JsonSerializable(explicitToJson: true)
class AllRoleResponse {
  int? activeRoles;
  List<Agents>? rolesList;
  int? totalRoles;

  AllRoleResponse({
    this.activeRoles,
    this.rolesList,
    this.totalRoles,
  });

  factory AllRoleResponse.fromJson(Map<String, dynamic> json) => _$AllRoleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AllRoleResponseToJson(this);
}
