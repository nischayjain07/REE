import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/source_values.dart';

part 'extended_properties.g.dart';

@JsonSerializable(explicitToJson: true)
class ExtendedProperties {
  @JsonKey(defaultValue: [])
  List<SourceValuesDTO>? sourceValues;

  ExtendedProperties({
    this.sourceValues,
  });

  factory ExtendedProperties.fromJson(Map<String, dynamic> json) => _$ExtendedPropertiesFromJson(json);

  Map<String, dynamic> toJson() => _$ExtendedPropertiesToJson(this);
}
