import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/cu.dart';

part 'cu_suggestions_response.g.dart';

@JsonSerializable(explicitToJson: true)
class CuSuggestionResponse {
  String? Industry;

  String? GSI;

  List<CU>? result;

  CuSuggestionResponse({this.GSI, this.result, this.Industry});

  factory CuSuggestionResponse.fromJson(Map<String, dynamic> json) => _$CuSuggestionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CuSuggestionResponseToJson(this);
}
