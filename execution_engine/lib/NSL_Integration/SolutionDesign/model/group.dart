import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/users_under_role.dart';

part 'group.g.dart';

@JsonSerializable(explicitToJson: true)
class Group {
  int? id;
  String? name;
  String? description;
  List<User>? users;

  Group({this.id, this.name, this.description, this.users});

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);

  Map<String, dynamic> toJson() => _$GroupToJson(this);
}
