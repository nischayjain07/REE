import 'package:json_annotation/json_annotation.dart';

part 'properties_map.g.dart';

@JsonSerializable(explicitToJson: true)
class PropertiesMap {
  List? defaultValues;

  List? specialFeatures;

  PropertiesMap({
    this.defaultValues,
    this.specialFeatures,
  });

  factory PropertiesMap.fromJson(Map<String, dynamic> json) => _$PropertiesMapFromJson(json);

  Map<String, dynamic> toJson() => _$PropertiesMapToJson(this);
}
