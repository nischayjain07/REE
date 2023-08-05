import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/validator_constraint_properties_dto.dart';
import 'package:execution_engine/NSL_Integration/model/validator_constraints_dto.dart';

// part 'validator_dto.g.dart';

// @JsonSerializable(explicitToJson: true)
// class ValidatorDTO {
//   String? name;

//   String? info;

//   List<ValidatorConstraintPropertiesDTO>? properties;

//   List<ValidatorConstraintsDTO>? constraints;

//   ValidatorDTO({this.name, this.info, this.constraints, this.properties});

//   factory ValidatorDTO.fromJson(Map<String, dynamic> json) => _$ValidatorDTOFromJson(json);

//   Map<String, dynamic> toJson() => _$ValidatorDTOToJson(this);
// }

class ValidatorDTO{
  String? name;
  String? info;
  List<ValidatorConstraintPropertiesDTO>? properties;
  List<ValidatorConstraintsDTO>? constraints;
  List<dynamic>? functions;

  ValidatorDTO({
    this.name,
    this.info,
    this.properties,
    this.constraints,
    this.functions,
  });

  ValidatorDTO.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    info = json['info'] as String?;
    properties = (json['properties'] as List?)?.map((dynamic e) => ValidatorConstraintPropertiesDTO.fromJson(e as Map<String,dynamic>)).toList();
    constraints = (json['constraints'] as List?)?.map((dynamic e) => ValidatorConstraintsDTO.fromJson(e as Map<String,dynamic>)).toList();
    functions = json['functions'] as List?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['info'] = info;
    json['properties'] = properties?.map((e) => e.toJson()).toList();
    json['constraints'] = constraints?.map((e) => e.toJson()).toList();
    json['functions'] = functions;
    return json;
  }
}