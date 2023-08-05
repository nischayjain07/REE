import 'package:json_annotation/json_annotation.dart';

part 'data_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class DataDTO {
  String? actualValue;

  String? displayValue;

  DataDTO({this.actualValue, this.displayValue});

  factory DataDTO.fromJson(Map<String, dynamic> json) => _$DataDTOFromJson(json);

  Map<String, dynamic> toJson() => _$DataDTOToJson(this);
}
