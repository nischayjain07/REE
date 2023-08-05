// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) {
  return Item(
    type: json['TYPE'] as String?,
    name: json['name'] as String?,
    data: ItemData.fromJson(json['DATA'] as Map<String, dynamic>),
    generalEntityID: json['generalEntityID'] as int?,
  );
}

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'TYPE': instance.type,
      'DATA': instance.data?.toJson(),
      'name': instance.name,
      'generalEntityID': instance.generalEntityID,
    };
