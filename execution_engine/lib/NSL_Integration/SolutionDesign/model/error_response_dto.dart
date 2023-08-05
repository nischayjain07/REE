import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/error_dto.dart';

part 'error_response_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ErrorResponse {
  String? snackbarMessage;
  String? cuName;
  Map<String, ErrorResponse>? exceptionResponseMapForSolLogic;
  Map<String, List<ErrorDTO>>? cuExceptions;

  ErrorResponse({this.snackbarMessage, this.cuName, this.exceptionResponseMapForSolLogic, this.cuExceptions});

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => _$ErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);
}
