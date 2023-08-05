// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validator_constraints_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidatorConstraintsDTO _$ValidatorConstraintsDTOFromJson(Map<String, dynamic> json) {
  return ValidatorConstraintsDTO(
    name: json['name'] as String?,
    type: json['type'] as String?,
    info: json['info'] as String?,
    properties: (json['properties'] as List?)?.map((dynamic e) => ValidatorConstraintPropertiesDTO.fromJson(e as Map<String,dynamic>)).toList(),
    displayName: json['displayName'] as String?,
    errorMsg: json['errorMsg'] as String?,
    value: json['value'] as String?,
    regex: json['regex'] as String?,
    maxLength: json['maxLength'] as String?,
    extension: json['extension'] as String?,
    unit: json['unit'] as String?,
    notAfterDate: json['notAfterDate'] as String?,
    notBeforeDate: json['notBeforeDate'] as String?,
    notBeforeDays: json['notBeforeDays'] as String?,
    notAfterDays: json['notAfterDays'] as String?,
    startWith: json['startWith'] as String?,
    contains: json['contains'] as String?,
    endsWith: json['endsWith'] as String?,
    defaultValue: json['defaultValue'] as String?,
    dependentExpression: json['dependentExpression'] as String?,
  );
}

Map<String, dynamic> _$ValidatorConstraintsDTOToJson(ValidatorConstraintsDTO instance) => <String, dynamic>{
      'name': instance.name,
      'info': instance.info,
      'properties': instance.properties?.map((e) => e.toJson()).toList(),
      'displayName': instance.displayName,
      'errorMsg': instance.errorMsg,
      'value': instance.value,
      'regex': instance.regex,
      'maxLength': instance.maxLength,
      'extension': instance.extension,
      'unit': instance.unit,
      'notAfterDate': instance.notAfterDate,
      'notBeforeDate': instance.notBeforeDate,
      'notBeforeDays': instance.notBeforeDays,
      'notAfterDays': instance.notAfterDays,
      'startWith': instance.startWith,
      'contains': instance.contains,
      'endsWith': instance.endsWith,
      'defaultValue': instance.defaultValue,
      'dependentExpression': instance.dependentExpression,
      'type': instance.type
    };
