import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:json_annotation/json_annotation.dart';

import 'package:flutter/material.dart';

part 'ui_text_style.g.dart';

final List<String> _fontWeightValues = ["w100", "w200", "w300", "w400", "w500", "w600", "w700", "w800", "w900"];

final List<String> _fontStyleValues = ['normal', 'italic'];

final List<String> _textBaselineValues = ['alphabetic', 'ideographic'];

@JsonSerializable(explicitToJson: true)
class UITextStyle {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;
  late String class_name;
  String? color = '0xFF000000';

  double? fontSize = 14;
  String? fontWeight;

  double? fontHeight;
  String? fontStyle = 'normal';
  String? textBaseline;
  String? decoration;
  String? fontFamily;

  final Map<String, TextDecoration> _decoration = {
    'lineThrough': TextDecoration.lineThrough,
    'overline': TextDecoration.overline,
    'underline': TextDecoration.underline,
    'none': TextDecoration.none,
  };

  final TextEditingController _fontSizeController = TextEditingController(text: '14');
  final TextEditingController _fontFamilyController = TextEditingController(text: '');

  UITextStyle(
      {this.color, this.fontSize, this.fontWeight, this.fontHeight, this.fontStyle, this.textBaseline, this.widget}) {
    class_name = "UITextStyle";
    color ??= '0xFF000000';
  }

  UITextStyle.googleFonts(this.class_name) {
    class_name = class_name;
    color ??= '0xFF000000';
  }

  TextStyle property() {
    TextStyle property;

    switch (class_name) {
      case 'UIGoogleFontsInter':
        property = GoogleFonts.getFont('Inter',
            color: Color(int.parse(color!)),
            fontSize: fontSize,
            fontStyle: fontStyle != null ? FontStyle.values[_fontStyleValues.indexOf(fontStyle!)] : null,
            textBaseline: textBaseline != null ? TextBaseline.values[_textBaselineValues.indexOf(textBaseline!)] : null,
            height: fontHeight,
            fontWeight: fontWeight != null ? FontWeight.values[_fontWeightValues.indexOf(fontWeight!)] : null,
            decoration: _decoration[decoration]);
        break;

      case 'GoogleFontsRoboto':
        property = GoogleFonts.roboto(
            color: Color(int.parse(color!)),
            fontSize: fontSize,
            fontStyle: fontStyle != null ? FontStyle.values[_fontStyleValues.indexOf(fontStyle!)] : null,
            textBaseline: TextBaseline.alphabetic,
            height: fontHeight,
            fontWeight: fontWeight != null ? FontWeight.values[_fontWeightValues.indexOf(fontWeight!)] : null,
            decoration: _decoration[decoration]);
        break;

      default:
        property = TextStyle(
          fontFamily: fontFamily,
          fontWeight: fontWeight != null ? FontWeight.values[_fontWeightValues.indexOf(fontWeight!)] : null,
          fontSize: fontSize,
          color: color != null ? Color(int.parse(color!)) : null,
          decoration: _decoration[decoration],
          fontStyle: fontStyle != null ? FontStyle.values[_fontStyleValues.indexOf(fontStyle!)] : null,
        );
    }

    return property;
  }

  factory UITextStyle.fromJson(Map<String, dynamic> json) {
    var wid = _$UITextStyleFromJson(json);
    wid._fontSizeController.text = wid.fontSize != null ? '${wid.fontSize}' : '14';
    wid._fontFamilyController.text = wid.fontFamily != null ? '${wid.fontFamily}' : '';
    return wid;
  }

  Map<String, dynamic> toJson() {
    return _$UITextStyleToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class UIGoogleFontsInter extends UITextStyle {
  UIGoogleFontsInter() : super() {
    class_name = "UIGoogleFontsInter";
  }

  @override
  TextStyle property() {
    TextStyle property;

    property = GoogleFonts.getFont('Inter',
        color: Color(int.parse(color!)),
        fontSize: fontSize,
        fontStyle: fontStyle != null ? FontStyle.values[_fontStyleValues.indexOf(fontStyle!)] : null,
        textBaseline: TextBaseline.alphabetic,
        height: fontHeight,
        fontWeight: fontWeight != null ? FontWeight.values[_fontWeightValues.indexOf(fontWeight!)] : null,
        decoration: _decoration[decoration]);
    return property;
  }

  factory UIGoogleFontsInter.fromJson(Map<String, dynamic> json) {
    return _$UIGoogleFontsInterFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UIGoogleFontsInterToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class UIGoogleFontsRoboto extends UITextStyle {
  UIGoogleFontsRoboto() : super() {
    class_name = "UIGoogleFontsRoboto";
  }

  @override
  TextStyle property() {
    TextStyle property;

    property = GoogleFonts.roboto(
        color: Color(int.parse(color!)),
        fontSize: fontSize,
        fontStyle: fontStyle != null ? FontStyle.values[_fontStyleValues.indexOf(fontStyle!)] : null,
        textBaseline: TextBaseline.alphabetic,
        height: fontHeight,
        fontWeight: fontWeight != null ? FontWeight.values[_fontWeightValues.indexOf(fontWeight!)] : null,
        // ignore: todo
        decoration: _decoration[decoration]);

    return property;
  }

  factory UIGoogleFontsRoboto.fromJson(Map<String, dynamic> json) {
    return _$UIGoogleFontsRobotoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UIGoogleFontsRobotoToJson(this);
  }
}
