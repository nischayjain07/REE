import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_border_side.g.dart';

var _style = ['none', 'solid'];

@JsonSerializable(explicitToJson: true)
class UIBorderSide {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;
  int color = Colors.transparent.value;

  double width = 1;
  String? style;
  double? strokeAlign;

  UIBorderSide({this.widget});
  UIBorderSide.none(this.style, this.width, {this.widget});

  BorderSide? property() {
    return BorderSide(
      width: width,
      color: Color(color),
      style: style != null ? BorderStyle.values[_style.indexOf(style!)] : BorderStyle.solid,
      strokeAlign: strokeAlign != null ? strokeAlign! : BorderSide.strokeAlignCenter,
    );
  }

  factory UIBorderSide.fromJson(Map<String, dynamic> json) {
    return _$UIBorderSideFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UIBorderSideToJson(this);
  }
}
