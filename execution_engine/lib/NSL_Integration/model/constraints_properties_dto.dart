import 'package:json_annotation/json_annotation.dart';

part 'constraints_properties_dto.g.dart';

@JsonSerializable()
class ConstraintsPropertiesDTO {
  String? errorMessage;

  String? value;

  String? regExp;

  String? maxLength;

  String? extension;

  String? unit;

  String? defaultValue;

  String? notAfterDate;

  String? startWith;

  String? contains;

  String? endsWith;

  String? notAfterDays;

  String? notBeforeDate;

  String? notBeforeDays;

  String? dependentExpression;

  String? type;

  ConstraintsPropertiesDTO(
      {this.errorMessage,
      this.value,
      this.regExp,
      this.maxLength,
      this.extension,
      this.unit,
      this.startWith,
      this.contains,
      this.endsWith,
      this.notAfterDate,
      this.notAfterDays,
      this.notBeforeDays,
      this.notBeforeDate,
      this.dependentExpression,
      this.defaultValue,
      this.type});

  factory ConstraintsPropertiesDTO.fromJson(Map<String, dynamic> json) => _$ConstraintsPropertiesDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ConstraintsPropertiesDTOToJson(this);
}
