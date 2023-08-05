import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/model/all_book_result.dart';

part 'all_book_response.g.dart';

@JsonSerializable(explicitToJson: true)
class AllBookResponse {
  int? status;
  String? message;
  AllBookResult? result;

  @JsonKey(defaultValue: '')
  AllBookResponse({this.status, this.message, this.result});

  factory AllBookResponse.fromJson(Map<String, dynamic> json) => _$AllBookResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AllBookResponseToJson(this);
}
