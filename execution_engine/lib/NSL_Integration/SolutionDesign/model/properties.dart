import 'package:json_annotation/json_annotation.dart';

part 'properties.g.dart';

@JsonSerializable(explicitToJson: true)
class Properties {
  String? sourceValues;
  String? currencyType;
  String? referencingType;
  String? unit;
  String? timeFormat;
  String? format;

  String? interval;

  String? incrementValue;

  String? recurrenceExpression;

  String? startDate;

  String? endDate;
  String? countResetParameter;
  String? countStartParameter;
  String? incIdLeadingZeros;
  String? incIdMaxValue;
  String? separator;

  Properties(
      {this.sourceValues,
      this.currencyType,
      this.referencingType,
      this.unit,
      this.format,
      this.timeFormat,
      this.interval,
      this.incrementValue,
      this.recurrenceExpression,
      this.startDate,
      this.endDate,
      this.countResetParameter,
      this.countStartParameter,
      this.incIdLeadingZeros,
      this.incIdMaxValue,
      this.separator});

  factory Properties.fromJson(Map<String, dynamic> json) => _$PropertiesFromJson(json);

  Map<String, dynamic> toJson() => _$PropertiesToJson(this);
}
