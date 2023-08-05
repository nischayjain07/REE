// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_listview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIListView _$UIListViewFromJson(Map<String, dynamic> json) => UIListView()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
  ..shrinkWarp = json['shrinkWarp'] as bool
  ..primary = json['primary'] as bool
  ..reverse = json['reverse'] as bool
  ..paddingLock = json['paddingLock'] as bool
  ..duration = (json['duration'] as num).toDouble()
  ..initialOpacity = (json['initialOpacity'] as num).toDouble()
  ..finalOpacity = (json['finalOpacity'] as num).toDouble()
  ..initialHOffset = (json['initialHOffset'] as num).toDouble()
  ..initialVOffset = (json['initialVOffset'] as num).toDouble()
  ..scrollDirection = $enumDecode(_$AxisEnumMap, json['scrollDirection'])
  ..curve = json['curve'] as int
  ..l = (json['l'] as num).toDouble()
  ..r = (json['r'] as num).toDouble()
  ..t = (json['t'] as num).toDouble()
  ..b = (json['b'] as num).toDouble()
  ..values = (json['values'] as List<dynamic>).map((e) => e as bool).toList();

Map<String, dynamic> _$UIListViewToJson(UIListView instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'shrinkWarp': instance.shrinkWarp,
      'primary': instance.primary,
      'reverse': instance.reverse,
      'paddingLock': instance.paddingLock,
      'duration': instance.duration,
      'initialOpacity': instance.initialOpacity,
      'finalOpacity': instance.finalOpacity,
      'initialHOffset': instance.initialHOffset,
      'initialVOffset': instance.initialVOffset,
      'scrollDirection': _$AxisEnumMap[instance.scrollDirection]!,
      'curve': instance.curve,
      'l': instance.l,
      'r': instance.r,
      't': instance.t,
      'b': instance.b,
      'values': instance.values,
    };

const _$AxisEnumMap = {
  Axis.horizontal: 'horizontal',
  Axis.vertical: 'vertical',
};
