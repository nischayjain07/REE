// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_radioListTile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIRadioListTile _$UIRadioListTileFromJson(Map<String, dynamic> json) => UIRadioListTile()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
  ..selected = json['selected'] as bool
  ..toggleable = json['toggleable'] as bool
  ..autofocus = json['autofocus'] as bool
  ..enableFeedback = json['enableFeedback'] as bool
  ..isThreeLine = json['isThreeLine'] as bool
  ..paddingLock = json['paddingLock'] as bool
  ..activeColor = json['activeColor'] as int
  ..tileColor = json['tileColor'] as int
  ..selectedTileColor = json['selectedTileColor'] as int
  ..titleColor = json['titleColor'] as int
  ..subtitleColor = json['subtitleColor'] as int
  ..title = json['title'] as String
  ..subtitle = json['subtitle'] as String
  ..titleSize = (json['titleSize'] as num).toDouble()
  ..subtitleSize = (json['subtitleSize'] as num).toDouble()
  ..textAlign = json['textAlign'] as int
  ..textAlignS = json['textAlignS'] as int
  ..fontStyle = json['fontStyle'] as int
  ..fontStyleS = json['fontStyleS'] as int
  ..value = json['value'] as String
  ..groupValue = json['groupValue'] as String
  ..titleD = json['titleD'] as int
  ..subtitleD = json['subtitleD'] as int
  ..titleD1 = json['titleD1'] as int
  ..subtitleD1 = json['subtitleD1'] as int;

Map<String, dynamic> _$UIRadioListTileToJson(UIRadioListTile instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'selected': instance.selected,
      'toggleable': instance.toggleable,
      'autofocus': instance.autofocus,
      'enableFeedback': instance.enableFeedback,
      'isThreeLine': instance.isThreeLine,
      'paddingLock': instance.paddingLock,
      'activeColor': instance.activeColor,
      'tileColor': instance.tileColor,
      'selectedTileColor': instance.selectedTileColor,
      'titleColor': instance.titleColor,
      'subtitleColor': instance.subtitleColor,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'titleSize': instance.titleSize,
      'subtitleSize': instance.subtitleSize,
      'textAlign': instance.textAlign,
      'textAlignS': instance.textAlignS,
      'fontStyle': instance.fontStyle,
      'fontStyleS': instance.fontStyleS,
      'value': instance.value,
      'groupValue': instance.groupValue,
      'titleD': instance.titleD,
      'subtitleD': instance.subtitleD,
      'titleD1': instance.titleD1,
      'subtitleD1': instance.subtitleD1,
    };
