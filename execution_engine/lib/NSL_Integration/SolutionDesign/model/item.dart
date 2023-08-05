import 'package:json_annotation/json_annotation.dart';

import 'package:execution_engine/NSL_Integration/SolutionDesign/model/item_data.dart';

part 'item.g.dart';

@JsonSerializable(explicitToJson: true)
class Item {
  @JsonKey(name: 'TYPE')
  String? type;
  @JsonKey(name: 'DATA')
  ItemData? data;

  String? name;

  int? generalEntityID;

  Item({
    this.type,
    this.name,
    this.data,
    this.generalEntityID,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
