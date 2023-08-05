import 'package:json_annotation/json_annotation.dart';

part 'export_item_details.g.dart';

@JsonSerializable()
class ItemDetails {
  String? applicationItemType;
  int? itemId;
  String? itemName;

  ItemDetails({
    this.applicationItemType,
    this.itemId,
    this.itemName,
  });

  factory ItemDetails.fromJson(Map<String, dynamic> json) => _$ItemDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemDetailsToJson(this);
}
