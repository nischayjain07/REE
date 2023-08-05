import 'package:json_annotation/json_annotation.dart';

part 'review_notification_request.g.dart';

@JsonSerializable(explicitToJson: true)
class ReviewRequest {
  String? title;

  String? content;

  Map<String, dynamic>? actionableContent;

  List<String>? targetUserId;

  List<String>? notificationChannels;

  ReviewRequest({this.title, this.content, this.actionableContent, this.notificationChannels, this.targetUserId});

  factory ReviewRequest.fromJson(Map<String, dynamic> json) => _$ReviewRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewRequestToJson(this);
}
