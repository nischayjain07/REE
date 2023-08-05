import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/users_under_role.dart';

part 'users_under_role_response.g.dart';

@JsonSerializable(explicitToJson: true)
class AllUsers {
  List<User>? users;

  AllUsers({this.users});

  factory AllUsers.fromJson(Map<String, dynamic> json) => _$AllUsersFromJson(json);

  Map<String, dynamic> toJson() => _$AllUsersToJson(this);
}
