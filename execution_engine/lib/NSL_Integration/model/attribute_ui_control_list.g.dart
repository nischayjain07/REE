// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_ui_control_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttributeUiControlListDTO _$AttributeUiControlListDTOFromJson(Map<String, dynamic> json) {
  return AttributeUiControlListDTO(
    data: (json['data'] as List)
        .map((e) => AttributeUiControlDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$AttributeUiControlListDTOToJson(AttributeUiControlListDTO instance) => <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
