// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_item_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemDetails _$ItemDetailsFromJson(Map<String, dynamic> json) {
  return ItemDetails(
    applicationItemType: json['applicationItemType'] as String?,
    itemId: json['itemId'] as int?,
    itemName: json['itemName'] as String?,
  );
}

Map<String, dynamic> _$ItemDetailsToJson(ItemDetails instance) => <String, dynamic>{
      'applicationItemType': instance.applicationItemType,
      'itemId': instance.itemId,
      'itemName': instance.itemName
    };
