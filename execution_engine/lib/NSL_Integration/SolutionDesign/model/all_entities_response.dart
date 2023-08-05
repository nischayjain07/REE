import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/all_entities_result.dart';

part 'all_entities_response.g.dart';

@JsonSerializable(explicitToJson: true)
class AllEntityResponse {
  int? status;

  String? message;

  AllEntityResult? result;

  AllEntityResponse({this.status, this.message, this.result});

  factory AllEntityResponse.fromJson(Map<String, dynamic> json) => _$AllEntityResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AllEntityResponseToJson(this);
}
