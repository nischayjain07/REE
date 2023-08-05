// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constraints_properties_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConstraintsPropertiesDTO _$ConstraintsPropertiesDTOFromJson(Map<String, dynamic> json) {
  return ConstraintsPropertiesDTO(
    errorMessage: json['errorMessage'] as String?,
    value: json['value'] as String?,
    regExp: json['regExp'] as String?,
    startWith: json['startWith'] as String?,
    endsWith: json['endsWith'] as String?,
    contains: json['contains'] as String?,
    notAfterDate: json['notAfterDate'] as String?,
    notAfterDays: json['notAfterDays'] as String?,
    notBeforeDays: json['notBeforeDays'] as String?,
    notBeforeDate: json['notBeforeDate'] as String?,
    dependentExpression: json['dependentExpression'] as String?,
    defaultValue: json['defaultValue'] as String?,
    type: json['type'] as String?,
  );
}

Map<String, dynamic> _$ConstraintsPropertiesDTOToJson(ConstraintsPropertiesDTO instance) => <String, dynamic>{
      'errorMessage': instance.errorMessage,
      'value': instance.value,
      'regExp': instance.regExp,
      'maxLength': instance.maxLength,
      'extension': instance.extension,
      'unit': instance.unit,
      'startWith': instance.startWith,
      'endsWith': instance.endsWith,
      'contains': instance.contains,
      'notAfterDate': instance.notAfterDate,
      'notAfterDays': instance.notAfterDays,
      'notBeforeDays': instance.notBeforeDays,
      'notBeforeDate': instance.notBeforeDate,
      'dependentExpression': instance.dependentExpression,
      'defaultValue': instance.defaultValue,
      'type': instance.type
    };
