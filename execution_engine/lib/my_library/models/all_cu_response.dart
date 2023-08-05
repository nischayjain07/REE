import 'package:execution_engine/my_library/models/all_cu_result.dart';
import 'package:json_annotation/json_annotation.dart';

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
