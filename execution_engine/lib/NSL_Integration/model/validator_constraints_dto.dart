import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/model/validator_constraint_properties_dto.dart';

part 'validator_constraints_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ValidatorConstraintsDTO {
  String? name;

  String? info;

  List<ValidatorConstraintPropertiesDTO>? properties;

  String? displayName;

  String? errorMsg;

  String? value;

  String? regex;

  String? maxLength;

  String? extension;

  String? unit;

  String? notAfterDate;

  String? notBeforeDate;

  String? notBeforeDays;

  String? notAfterDays;

  String? startWith;

  String? contains;

  String? endsWith;

  String? defaultValue;

  String? dependentExpression;

  String? type;

  ValidatorConstraintsDTO(
      {this.name,
      this.info,
      this.properties,
      this.displayName,
      this.errorMsg,
      this.value,
      this.regex,
      this.maxLength,
      this.extension,
      this.unit,
      this.notAfterDate,
      this.notAfterDays,
      this.notBeforeDate,
      this.notBeforeDays,
      this.startWith,
      this.contains,
      this.endsWith,
      this.dependentExpression,
      this.defaultValue,
      this.type});

  factory ValidatorConstraintsDTO.fromJson(Map<String, dynamic> json) => _$ValidatorConstraintsDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ValidatorConstraintsDTOToJson(this);
}
