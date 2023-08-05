// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_list_tile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UIListTile _$UIListTileFromJson(Map<String, dynamic> json) => UIListTile()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
  ..title = json['title'] as bool
  ..subtitle = json['subtitle'] as bool
  ..trailing = json['trailing'] as bool
  ..leading = json['leading'] as bool
  ..dense = json['dense'] as bool
  ..enableFeedback = json['enableFeedback'] as bool
  ..enabled = json['enabled'] as bool
  ..isThreeLine = json['isThreeLine'] as bool
  ..selected = json['selected'] as bool
  ..tileColor = json['tileColor'] as int?
  ..textColor = json['textColor'] as int?
  ..focusColor = json['focusColor'] as int
  ..hoverColor = json['hoverColor'] as int
  ..iconColor = json['iconColor'] as int?
  ..selectedColor = json['selectedColor'] as int?
  ..selectedTileColor = json['selectedTileColor'] as int?
  ..padding = UIPadding.fromJson(json['padding'] as Map<String, dynamic>)
  ..horizontalTitleGap = (json['horizontalTitleGap'] as num?)?.toDouble()
  ..minLeadingWidth = (json['minLeadingWidth'] as num?)?.toDouble()
  ..minVerticalPadding = (json['minVerticalPadding'] as num?)?.toDouble();

Map<String, dynamic> _$UIListTileToJson(UIListTile instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'title': instance.title,
      'subtitle': instance.subtitle,
      'trailing': instance.trailing,
      'leading': instance.leading,
      'dense': instance.dense,
      'enableFeedback': instance.enableFeedback,
      'enabled': instance.enabled,
      'isThreeLine': instance.isThreeLine,
      'selected': instance.selected,
      'tileColor': instance.tileColor,
      'textColor': instance.textColor,
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'iconColor': instance.iconColor,
      'selectedColor': instance.selectedColor,
      'selectedTileColor': instance.selectedTileColor,
      'padding': instance.padding.toJson(),
      'horizontalTitleGap': instance.horizontalTitleGap,
      'minLeadingWidth': instance.minLeadingWidth,
      'minVerticalPadding': instance.minVerticalPadding,
    };
