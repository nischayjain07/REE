import 'package:json_annotation/json_annotation.dart';

part 'nsl_attribute_properties.g.dart';

@JsonSerializable(explicitToJson: true)
class NslAttributeProperties {
  String? isHidden;

  NslAttributeProperties({
    this.isHidden,
  });

  factory NslAttributeProperties.fromJson(Map<String, dynamic> json) => _$NslAttributePropertiesFromJson(json);

  Map<String, dynamic> toJson() => _$NslAttributePropertiesToJson(this);
}
