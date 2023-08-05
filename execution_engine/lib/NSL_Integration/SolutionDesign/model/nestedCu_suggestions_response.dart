import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/cu.dart';

part 'nestedCu_suggestions_response.g.dart';

@JsonSerializable(explicitToJson: true)
class NestedCuSuggestionResponse {
  int? status;
  String? message;
  List<CU>? result;

  NestedCuSuggestionResponse({
    this.status,
    this.message,
    this.result,
  });

  factory NestedCuSuggestionResponse.fromJson(Map<String, dynamic> json) => _$NestedCuSuggestionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NestedCuSuggestionResponseToJson(this);
}
