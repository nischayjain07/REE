import 'package:execution_engine/NSL_Integration/SolutionDesign/model/role_my_collection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'users_under_role.g.dart';

@JsonSerializable(explicitToJson: true)
class User {
  int? id;
  String? name;
  String? email;
  bool? isEnabled;
  User? manager;
  List<Agents>? roles;

  User({
    this.id,
    this.name,
    this.email,
    this.manager,
    this.roles,
    this.isEnabled,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
