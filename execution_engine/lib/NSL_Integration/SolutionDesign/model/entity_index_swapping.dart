import 'package:json_annotation/json_annotation.dart';

import 'gsi.dart';
part 'entity_index_swapping.g.dart';
class EntityReassignmentObject {
  int? status;
  String? message;
  GSI? result;

  EntityReassignmentObject({this.status, this.message, this.result});
  factory EntityReassignmentObject.fromJson(Map<String, dynamic> json) => _$EntityReassignmentObjectFromJson(json);

  Map<String, dynamic> toJson() => _$EntityReassignmentObjectToJson(this);
}