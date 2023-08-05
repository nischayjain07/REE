import 'package:json_annotation/json_annotation.dart';

part 'error_details_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ErrorDetailsDTO {
  String? errorLevel;
  String? message;

  ErrorDetailsDTO({this.errorLevel, this.message});

  factory ErrorDetailsDTO.fromJson(Map<String, dynamic> json) => _$ErrorDetailsDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorDetailsDTOToJson(this);
}
