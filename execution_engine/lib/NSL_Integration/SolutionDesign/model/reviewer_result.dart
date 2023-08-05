import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/reviewer.dart';

part 'reviewer_result.g.dart';

@JsonSerializable(explicitToJson: true)
class ReviewerResult {
  String? message;

  List<Reviewer>? result;

  int? status;

  ReviewerResult({this.message, this.result, this.status});

  factory ReviewerResult.fromJson(Map<String, dynamic> json) => _$ReviewerResultFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewerResultToJson(this);
}
