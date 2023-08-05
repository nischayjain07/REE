import 'package:execution_engine/constants.dart';
import 'package:json_annotation/json_annotation.dart';

part 'query.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class Query {
  @JsonKey(nullable: true)
  int? searchQueryDepth;
  @JsonKey(nullable: true)
  OperationType? operationType;
  @JsonKey(nullable: true)
  List<Query>? queries;
  @JsonKey(nullable: true)
  String? fieldName;
  @JsonKey(nullable: true)
  SearchOperatorType? searchOperatorType;
  @JsonKey(nullable: true)
  List? values;

  Query(
      {this.searchQueryDepth, this.operationType, this.queries, this.fieldName, this.searchOperatorType, this.values});

  factory Query.fromJson(Map<String, dynamic> json) => _$QueryFromJson(json);

  Map<String, dynamic> toJson() => _$QueryToJson(this);
}
