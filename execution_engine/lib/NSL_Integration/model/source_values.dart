import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/data_dto.dart';

part 'source_values.g.dart';

@JsonSerializable(explicitToJson: true)
class SourceValuesDTO {
  String? TYPE;

  DataDTO? DATA;

  SourceValuesDTO({this.TYPE, this.DATA});

  factory SourceValuesDTO.fromJson(Map<String, dynamic> json) => _$SourceValuesDTOFromJson(json);

  Map<String, dynamic> toJson() => _$SourceValuesDTOToJson(this);
}
