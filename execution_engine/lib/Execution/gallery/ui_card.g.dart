// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UICard _$UICardFromJson(Map<String, dynamic> json) => UICard()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
  ..color = json['color'] as int
  ..shadowColor = json['shadowColor'] as int
  ..surfaceTintColor = json['surfaceTintColor'] as int
  ..clipBehavior = $enumDecode(_$ClipEnumMap, json['clipBehavior'])
  ..elevation = (json['elevation'] as num).toDouble()
  ..borderOnForeground = json['borderOnForeground'] as bool
  ..semanticContainer = json['semanticContainer'] as bool
  ..marginLock = json['marginLock'] as bool
  ..keyValue = json['keyValue'] == null ? null : json['keyValue'] as String?;

Map<String, dynamic> _$UICardToJson(UICard instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'color': instance.color,
      'shadowColor': instance.shadowColor,
      'surfaceTintColor': instance.surfaceTintColor,
      'clipBehavior': _$ClipEnumMap[instance.clipBehavior]!,
      'elevation': instance.elevation,
      'borderOnForeground': instance.borderOnForeground,
      'semanticContainer': instance.semanticContainer,
      'marginLock': instance.marginLock,
      'keyValue': instance.keyValue
    };

const _$ClipEnumMap = {
  Clip.none: 'none',
  Clip.hardEdge: 'hardEdge',
  Clip.antiAlias: 'antiAlias',
  Clip.antiAliasWithSaveLayer: 'antiAliasWithSaveLayer',
};
