import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/all_entities_content.dart';

part 'all_entities_result.g.dart';

@JsonSerializable(explicitToJson: true)
class AllEntityResult {
  int? totalPages;

  int? totalResults;

  List<AllEntityContent>? data;

  AllEntityResult({this.totalPages, this.data, this.totalResults});

  factory AllEntityResult.fromJson(Map<String, dynamic> json) => _$AllEntityResultFromJson(json);

  Map<String, dynamic> toJson() => _$AllEntityResultToJson(this);
}
