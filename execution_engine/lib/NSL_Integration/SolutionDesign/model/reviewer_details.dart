import 'package:json_annotation/json_annotation.dart';

part 'reviewer_details.g.dart';

@JsonSerializable()
class ReviewerDetails {
  @JsonKey(nullable: true)
  String? taskId;
  @JsonKey(nullable: true)
  String? name;
  @JsonKey(nullable: true)
  String? status;
  @JsonKey(nullable: true)
  String? submittedTime;
  @JsonKey(nullable: true)
  String? completedTime;
  @JsonKey(nullable: true)
  List<String>? comments;

  ReviewerDetails({this.name, this.taskId, this.status, this.submittedTime, this.completedTime, this.comments});

  factory ReviewerDetails.fromJson(Map<String, dynamic> json) => _$ReviewerDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewerDetailsToJson(this);
}
