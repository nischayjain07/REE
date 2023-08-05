import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/entity_cards/sort.dart';

part 'group_by.g.dart';
enum Type { FIELD, DATE_HISTOGRAM }

@JsonSerializable(nullable: true)
class GroupBy {
  String? fieldName;
  Type? type;
  Sort? sort;

  GroupBy({this.fieldName, this.type, this.sort});

  factory GroupBy.fromJson(Map<String, dynamic> json) => _$GroupByFromJson(json);

  Map<String, dynamic> toJson() => _$GroupByToJson(this);
}
