import 'package:json_annotation/json_annotation.dart';
import 'package:execution_engine/NSL_Integration/model/entity_model.dart';

part 'attribute_ui_control.g.dart';

@JsonSerializable()
class AttributeUiControlDTO {
  String? name;

  String? dataType;

  String? source;

  String? uiElement;

  bool? isMulti;

  List<String>? properties;

  AttributeUiControlDTO({this.name, this.dataType, this.uiElement, this.isMulti, this.properties, this.source});

  factory AttributeUiControlDTO.fromJson(Map<String, dynamic> json) => _$AttributeUiControlDTOFromJson(json);

  Map<String, dynamic> toJson() => _$AttributeUiControlDTOToJson(this);
}
