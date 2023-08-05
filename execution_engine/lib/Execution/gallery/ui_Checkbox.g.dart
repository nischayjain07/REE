// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_Checkbox.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UICheckBox _$UICheckBoxFromJson(Map<String, dynamic> json) => UICheckBox()
  ..offset = (json['offset'] as num).toDouble()
  ..offset1 = (json['offset1'] as num).toDouble()
  ..size = (json['size'] as num?)?.toDouble()
  ..size1 = (json['size1'] as num?)?.toDouble()
  ..class_name = json['class_name'] as String
  ..children = (json['children'] as List<dynamic>).map((e) => UIWidget.fromJson(e as Map<String, dynamic>)).toList()
  ..child = json['child'] == null ? null : UIWidget.fromJson(json['child'] as Map<String, dynamic>)
  ..padding = json['padding'] == null ? null : UIPadding.fromJson(json['padding'] as Map<String, dynamic>)
  ..selected = json['selected'] == null ? null : UISwitchListTile.fromJson(json['selected'] as Map<String, dynamic>)
  ..autofocus = json['autofocus'] == null ? null : UISwitchListTile.fromJson(json['autofocus'] as Map<String, dynamic>)
  ..activeColor =
      json['activeColor'] == null ? null : UIColorPickerWidget.fromJson(json['activeColor'] as Map<String, dynamic>)
  ..tileColor =
      json['tileColor'] == null ? null : UIColorPickerWidget.fromJson(json['tileColor'] as Map<String, dynamic>)
  ..checkColor =
      json['checkColor'] == null ? null : UIColorPickerWidget.fromJson(json['checkColor'] as Map<String, dynamic>)
  ..titleColor =
      json['titleColor'] == null ? null : UIColorPickerWidget.fromJson(json['titleColor'] as Map<String, dynamic>)
  ..subtitleColor =
      json['subtitleColor'] == null ? null : UIColorPickerWidget.fromJson(json['subtitleColor'] as Map<String, dynamic>)
  ..checkBorderColor = json['checkBorderColor'] == null
      ? null
      : UIColorPickerWidget.fromJson(json['checkBorderColor'] as Map<String, dynamic>)
  ..textAlign =
      json['textAlign'] == null ? null : UITextAlignContainer.fromJson(json['textAlign'] as Map<String, dynamic>)
  ..textAlignS =
      json['textAlignS'] == null ? null : UITextAlignContainer.fromJson(json['textAlignS'] as Map<String, dynamic>)
  ..textStyle =
      json['textStyle'] == null ? null : UITextStyleContainer.fromJson(json['textStyle'] as Map<String, dynamic>)
  ..textStyleS =
      json['textStyleS'] == null ? null : UITextStyleContainer.fromJson(json['textStyleS'] as Map<String, dynamic>)
  ..value = json['value'] as bool
  ..selectedTileColor = json['selectedTileColor'] as int
  ..controlAffinity = json['controlAffinity'] as int
  ..leading = json['leading'] as bool
  ..borderRadius = (json['borderRadius'] as num).toDouble()
  ..valueT = json['valueT'] as String?
  ..fontSizeT = (json['fontSizeT'] as num).toDouble()
  ..fontWeightT = json['fontWeightT'] as int
  ..valueS = json['valueS'] as String?
  ..fontSizeS = (json['fontSizeS'] as num).toDouble()
  ..fontWeightS = json['fontWeightS'] as int
  ..curve = json['curve'] as int
  ..duration = json['duration'] as int
  ..durationAnime = (json['durationAnime'] as num).toDouble()
  ..iniOpacity = (json['iniOpacity'] as num).toDouble()
  ..iniOpacityAnime = (json['iniOpacityAnime'] as num).toDouble()
  ..finalOpacity = (json['finalOpacity'] as num).toDouble()
  ..finalOpacityAnime = (json['finalOpacityAnime'] as num).toDouble()
  ..fadeAnime = json['fadeAnime'] as bool
  ..horizontalIniOffset = json['horizontalIniOffset'] as int
  ..horizontalIniOffsetAnime = (json['horizontalIniOffsetAnime'] as num).toDouble()
  ..horizontalFinalOffset = json['horizontalFinalOffset'] as int
  ..horizontalFinalOffsetAnime = (json['horizontalFinalOffsetAnime'] as num).toDouble()
  ..verticalIniOffset = json['verticalIniOffset'] as int
  ..verticalIniOffsetAnime = (json['verticalIniOffsetAnime'] as num).toDouble()
  ..verticalFinalOffset = json['verticalFinalOffset'] as int
  ..verticalFinalOffsetAnime = (json['verticalFinalOffsetAnime'] as num).toDouble()
  ..iniScaleAnime = (json['iniScaleAnime'] as num).toDouble()
  ..finalScaleAnime = (json['finalScaleAnime'] as num).toDouble()
  ..showFontWeight = json['showFontWeight'] as String
  ..showAnimationCurve = json['showAnimationCurve'] as String
  ..l1 = json['l1'] as int
  ..r1 = json['r1'] as int
  ..t1 = json['t1'] as int
  ..b1 = json['b1'] as int
  ..l2 = json['l2'] as int
  ..r2 = json['r2'] as int
  ..t2 = json['t2'] as int
  ..b2 = json['b2'] as int;

Map<String, dynamic> _$UICheckBoxToJson(UICheckBox instance) => <String, dynamic>{
      'offset': instance.offset,
      'offset1': instance.offset1,
      'size': instance.size,
      'size1': instance.size1,
      'class_name': instance.class_name,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'child': instance.child?.toJson(),
      'padding': instance.padding?.toJson(),
      'selected': instance.selected?.toJson(),
      'autofocus': instance.autofocus?.toJson(),
      'activeColor': instance.activeColor?.toJson(),
      'tileColor': instance.tileColor?.toJson(),
      'checkColor': instance.checkColor?.toJson(),
      'titleColor': instance.titleColor?.toJson(),
      'subtitleColor': instance.subtitleColor?.toJson(),
      'checkBorderColor': instance.checkBorderColor?.toJson(),
      'textAlign': instance.textAlign?.toJson(),
      'textAlignS': instance.textAlignS?.toJson(),
      'textStyle': instance.textStyle?.toJson(),
      'textStyleS': instance.textStyleS?.toJson(),
      'value': instance.value,
      'selectedTileColor': instance.selectedTileColor,
      'controlAffinity': instance.controlAffinity,
      'leading': instance.leading,
      'borderRadius': instance.borderRadius,
      'valueT': instance.valueT,
      'fontSizeT': instance.fontSizeT,
      'fontWeightT': instance.fontWeightT,
      'valueS': instance.valueS,
      'fontSizeS': instance.fontSizeS,
      'fontWeightS': instance.fontWeightS,
      'curve': instance.curve,
      'duration': instance.duration,
      'durationAnime': instance.durationAnime,
      'iniOpacity': instance.iniOpacity,
      'iniOpacityAnime': instance.iniOpacityAnime,
      'finalOpacity': instance.finalOpacity,
      'finalOpacityAnime': instance.finalOpacityAnime,
      'fadeAnime': instance.fadeAnime,
      'horizontalIniOffset': instance.horizontalIniOffset,
      'horizontalIniOffsetAnime': instance.horizontalIniOffsetAnime,
      'horizontalFinalOffset': instance.horizontalFinalOffset,
      'horizontalFinalOffsetAnime': instance.horizontalFinalOffsetAnime,
      'verticalIniOffset': instance.verticalIniOffset,
      'verticalIniOffsetAnime': instance.verticalIniOffsetAnime,
      'verticalFinalOffset': instance.verticalFinalOffset,
      'verticalFinalOffsetAnime': instance.verticalFinalOffsetAnime,
      'iniScaleAnime': instance.iniScaleAnime,
      'finalScaleAnime': instance.finalScaleAnime,
      'showFontWeight': instance.showFontWeight,
      'showAnimationCurve': instance.showAnimationCurve,
      'l1': instance.l1,
      'r1': instance.r1,
      't1': instance.t1,
      'b1': instance.b1,
      'l2': instance.l2,
      'r2': instance.r2,
      't2': instance.t2,
      'b2': instance.b2,
    };
