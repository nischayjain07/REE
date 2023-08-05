import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/error_details_dto.dart';

part 'error_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ErrorDTO {
  List<ErrorDetailsDTO>? errorDetails;

  ErrorDTO({this.errorDetails});

  factory ErrorDTO.fromJson(Map<String, dynamic> json) => _$ErrorDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorDTOToJson(this);
}
//rename to error_dto