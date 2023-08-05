import 'package:json_annotation/json_annotation.dart';

part 'exception_cu.g.dart';

@JsonSerializable()
class ExceptionCU {
  int? id;

  String? exceptionCUName;

  String? exceptionCategory;

  String? dsdCuTobeExecuted;

  int? containerId;

  int? cuTobeExecuted;

  String? containerType;

  ExceptionCU(
      {this.containerId,
      this.containerType,
      this.cuTobeExecuted,
      this.exceptionCUName,
      this.exceptionCategory,
      this.dsdCuTobeExecuted,
      this.id});

  factory ExceptionCU.fromJson(Map<String, dynamic> json) => _$ExceptionCUListFromJson(json);

  Map<String, dynamic> toJson() => _$ExceptionCUListToJson(this);
}
