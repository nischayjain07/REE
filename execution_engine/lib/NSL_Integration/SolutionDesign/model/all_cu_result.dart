import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/cu.dart';

part 'all_cu_result.g.dart';

@JsonSerializable(explicitToJson: true)
class AllCUResult {
  int? totalResults;
  @JsonKey(defaultValue: [])
  List<CU>? data;

  AllCUResult({this.totalResults, this.data});

  factory AllCUResult.fromJson(Map<String, dynamic> json) => _$AllCUResultFromJson(json);

  Map<String, dynamic> toJson() => _$AllCUResultToJson(this);
}
