import 'package:execution_engine/constants.dart';
import 'package:json_annotation/json_annotation.dart';

import 'query.dart';

part 'conditional_output.g.dart';

@JsonSerializable(nullable: true)
class ConditionalOutput {
  String? fieldName;
  String? alternateField;
  FunctionType? functionType;
  String? thenMessage;
  String? elseMessage;
  Query? searchQuery;
  String? outputFieldName;

  ConditionalOutput({this.fieldName, this.alternateField, this.functionType, this.thenMessage, this.elseMessage, this.searchQuery, this.outputFieldName});

  factory ConditionalOutput.fromJson(Map<String, dynamic> json) => _$ConditionalOutputFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionalOutputToJson(this);
}
