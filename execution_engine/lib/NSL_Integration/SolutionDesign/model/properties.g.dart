// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Properties _$PropertiesFromJson(Map<String, dynamic> json) {
  return Properties(
      sourceValues: json['sourceValues'] as String?,
      currencyType: json['currencyType'] as String?,
      referencingType: json['referencingType'] as String?,
      unit: json['unit'] as String?,
      interval: json['interval'] as String?,
      incrementValue: json['incrementValue'] as String?,
      recurrenceExpression: json['recurrenceExpression'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      timeFormat: json['timeFormat'] as String?,
      format: json['format'] as String?,
      countResetParameter:json['countResetParameter'] as String?,
    countStartParameter:json['countStartParameter'] as String?,
    incIdLeadingZeros:json['incIdLeadingZeros'] as String?,
    incIdMaxValue:json['incIdMaxValue'] as String?,
    separator:json['separator'] as String);
}

Map<String, dynamic> _$PropertiesToJson(Properties instance) => <String, dynamic>{
      'sourceValues': instance.sourceValues,
      'currencyType': instance.currencyType,
      'referencingType': instance.referencingType,
      'unit': instance.unit,
      'interval': instance.interval,
      'incrementValue': instance.incrementValue,
      'recurrenceExpression': instance.recurrenceExpression,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'timeFormat': instance.timeFormat,
      'format': instance.format,
        'countResetParameter':instance.countResetParameter,
      'countStartParameter':instance.countStartParameter,
      'incIdLeadingZeros':instance.incIdLeadingZeros,
      'incIdMaxValue':instance.incIdMaxValue,
      'separator':instance.separator
    };
