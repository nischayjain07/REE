import 'package:execution_engine/constants.dart';
import 'package:json_annotation/json_annotation.dart';

part 'nsl_function.g.dart';

@JsonSerializable(nullable: true)
class NSLFunction {
  String? fieldName;
  FunctionType? functionType = FunctionType.COUNT;

  NSLFunction({this.fieldName, this.functionType});

  factory NSLFunction.fromJson(Map<String, dynamic> json) => _$NSLFunctionFromJson(json);

  Map<String, dynamic> toJson() => _$NSLFunctionToJson(this);
}
