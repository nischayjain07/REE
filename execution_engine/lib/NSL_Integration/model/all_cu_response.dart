import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/all_cu_result.dart';

part 'all_cu_response.g.dart';

@JsonSerializable(explicitToJson: true)
class AllCU {
  int? status;
  String? message;
  AllCUResult? result;

  AllCU({
    this.status,
    this.message,
    this.result,
  });

  factory AllCU.fromJson(Map<String, dynamic> json) => _$AllCUFromJson(json);

  Map<String, dynamic> toJson() => _$AllCUToJson(this);
}
