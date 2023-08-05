import 'package:json_annotation/json_annotation.dart';

part 'arithmetic_operation.g.dart';

@JsonSerializable(nullable: true)
class ArithmeticOperation {
    String? name;
    List? operations;

  ArithmeticOperation({this.name, this.operations});

  factory ArithmeticOperation.fromJson(Map<String, dynamic> json) => _$ArithmeticOperationFromJson(json);

  Map<String, dynamic> toJson() => _$ArithmeticOperationToJson(this);
}
