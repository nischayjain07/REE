import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/extended_properties.dart';
import 'package:execution_engine/NSL_Integration/SolutionDesign/model/properties.dart';
import 'package:execution_engine/NSL_Integration/model/attribute_ui_control.dart';

part 'attribute_type.g.dart';

@JsonSerializable(explicitToJson: true)
class AttributeType {
  String? type;

  dynamic nestedNslDataTypeProperties;

  Properties? properties;

  AttributeUiControlDTO? uiElement;
  @JsonKey(defaultValue: {})
  ExtendedProperties? extendedProperties;

  AttributeType({
    this.type,
    this.nestedNslDataTypeProperties,
    this.properties,
    this.uiElement,
    this.extendedProperties,
  });

  factory AttributeType.fromJson(Map<String, dynamic> json) => _$AttributeTypeFromJson(json);

  Map<String, dynamic> toJson() => _$AttributeTypeToJson(this);
}
