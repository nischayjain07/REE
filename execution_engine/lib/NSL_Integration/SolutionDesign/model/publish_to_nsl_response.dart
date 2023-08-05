import 'package:json_annotation/json_annotation.dart';

part 'publish_to_nsl_response.g.dart';

@JsonSerializable(explicitToJson: true)
class PublishToNSLResponse {
  int? status;
  String? message;

  PublishToNSLResponse({
    this.status,
    this.message,
  });

  factory PublishToNSLResponse.fromJson(Map<String, dynamic> json) => _$PublishToNSLResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PublishToNSLResponseToJson(this);
}
