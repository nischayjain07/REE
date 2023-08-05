// import 'dart:ffi';
// import 'package:google_fonts/google_fonts.dart';

import 'package:execution_engine/Execution/gallery/custom_widgets/ui_border.dart';
import 'package:execution_engine/Execution/gallery/custom_widgets/ui_border_radius.dart';
import 'package:execution_engine/Execution/gallery/custom_widgets/ui_box_shadow.dart';
import 'package:execution_engine/Execution/gallery/custom_widgets/ui_decoration_image.dart';
import 'package:execution_engine/Execution/gallery/custom_widgets/ui_linear_gradient.dart';
import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/material.dart';

part 'ui_box_decoration.g.dart';

List<String> _boxShape = ['rectangle', 'circle'];

List<String> _blendMode = [
  'clear',
  'src',
  'dst',
  'srcOver',
  'dstOver',
  'srcIn',
  'dstIn',
  'srcOut',
  'dstOut',
  'srcATop',
  'dstATop',
  'xor',
  'plus',
  'modulate',
  'screen',
  'overlay',
  'darken',
  'lighten',
  'colorDodge',
  'colorBurn',
  'hardLight',
  'softLight',
  'difference',
  'exclusion',
  'multiply',
  'hue',
  'saturation',
  'color',
  'luminosity'
];

@JsonSerializable(explicitToJson: true)
class UIBoxDecoration {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;

  String class_name = 'UIBoxDecoration';
  int? color = Colors.transparent.value;
  String shape = 'rectangle'; // 'rectangle'
  String? backgroundBlendMode;
  bool? isGradient;
  bool? isBoxShadow;
  UIBorder? border; // = UIBorder();
  UIBorderRadius? borderRadius; // = UIBorderRadius();

  UIBoxShadow? boxShadow;

  UILinearGradient? linearGradient; // = UILinearGradient();

  UIDecorationImage? image;

  UIBoxDecoration({this.widget}) {
    borderRadius ??= UIBorderRadius(widget: widget);
    border ??= UIBorder(widget: widget);
    shape = 'rectangle';
    image ??= UIDecorationImage(widget: widget);
    linearGradient ??= UILinearGradient(widget: widget);
    isGradient ??= isBoxShadow = false;
    boxShadow ??= UIBoxShadow(widget: widget);
  }

  BoxDecoration property() {
    BoxDecoration property;

    property = BoxDecoration(
        color: color != null && !isGradient! ? Color(color!) : null,
        borderRadius: shape == 'rectangle' ? borderRadius?.property() : null,
        boxShadow: isBoxShadow! ? [boxShadow!.property()] : null,
        border: border?.property(),
        shape: BoxShape.values[_boxShape.indexOf(shape)],
        backgroundBlendMode:
            backgroundBlendMode != null ? BlendMode.values[_blendMode.indexOf(backgroundBlendMode!)] : null,
        image: image!.property(),
        gradient: isGradient! ? linearGradient!.property() : null);

    return property;
  }

  Map<String, dynamic> toJson() {
    class_name = 'UIBoxDecoration';
    return _$UIBoxDecorationToJson(this);
  }

  static UIBoxDecoration fromJson(Map<String, dynamic> json) {
    if (json["class_name"] == null) json["class_name"] = 'UIBoxDecoration';
    var temp = _$UIBoxDecorationFromJson(json);
    return temp;
  }
}
