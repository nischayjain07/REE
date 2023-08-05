import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/model/attribute_ui_control.dart';

part 'attribute_ui_control_list.g.dart';

@JsonSerializable(explicitToJson: true)
class AttributeUiControlListDTO {
  List<AttributeUiControlDTO>? data;

  AttributeUiControlListDTO({this.data});

  factory AttributeUiControlListDTO.fromJson(Map<String, dynamic> json) => _$AttributeUiControlListDTOFromJson(json);

  Map<String, dynamic> toJson() => _$AttributeUiControlListDTOToJson(this);
}
