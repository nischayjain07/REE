import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/model/constraints_properties_dto.dart';

part 'constraints_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ConstraintsDTO {
  String? name;

  ConstraintsPropertiesDTO? properties;

  ConstraintsDTO({this.name, this.properties});
  factory ConstraintsDTO.fromJson(Map<String, dynamic> json) => _$ConstraintsDTOFromJson(json);
  Map<String, dynamic> toJson() => _$ConstraintsDTOToJson(this);

}
