import 'package:json_annotation/json_annotation.dart';

part 'all_reserved_action.g.dart';

@JsonSerializable()
class ReservedAction {
  int? id;

  String? status;

  String? name;

  bool? isReserved;

  String? dsdId;

  ReservedAction({this.id, this.status, this.name, this.isReserved, this.dsdId});

  factory ReservedAction.fromJson(Map<String, dynamic> json) => _$ReservedActionFromJson(json);

  Map<String, dynamic> toJson() => _$ReservedActionToJson(this);
}
