import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/reviewer_details.dart';

part 'review_details.g.dart';

@JsonSerializable(explicitToJson: true, nullable: true)
class ReviewDetails {
  String? betOwner;
  String? betName;
  String? betDescription;
  String? submittedTime;
  List<ReviewerDetails>? reviewers;

  ReviewDetails({
    this.betOwner,
    this.betName,
    this.betDescription,
    this.submittedTime,
    this.reviewers,
  });

  factory ReviewDetails.fromJson(Map<String, dynamic> json) => _$ReviewDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewDetailsToJson(this);
}
