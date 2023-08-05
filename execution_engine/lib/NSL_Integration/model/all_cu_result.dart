import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/cu.dart';

part 'all_cu_result.g.dart';

@JsonSerializable(explicitToJson: true)
class AllCUResult {
  int? total;
  @JsonKey(defaultValue: [])
  List<CU>? content;
  @JsonKey(defaultValue: [])
  List<CU?>? data;
  @JsonKey(defaultValue: {})
  Map? pageable;
  int? totalPages;
  int? totalResults;

  AllCUResult({this.total, this.content, this.pageable, this.data, this.totalPages, this.totalResults});

  factory AllCUResult.fromJson(Map<String, dynamic> json) => _$AllCUResultFromJson(json);

  Map<String, dynamic> toJson() => _$AllCUResultToJson(this);
}
