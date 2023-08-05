import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_edgeinsets_geometry.g.dart';

@JsonSerializable(explicitToJson: true)
class UIEdgeInsetsGeometry {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;
  String class_name = 'UIEdgeInsetsGeometry';

  double? left;
  double? top;
  double? right;
  double? bottom;

  UIEdgeInsetsGeometry({this.left, this.top, this.right, this.bottom, this.widget});

  EdgeInsets property() {
    return EdgeInsets.only(left: left ?? 0.0, top: top ?? 0.0, right: right ?? 0.0, bottom: bottom ?? 0.0);
  }

  factory UIEdgeInsetsGeometry.fromJson(Map<String, dynamic> json) {
    return _$UIEdgeInsetsGeometryFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UIEdgeInsetsGeometryToJson(this);
  }

  String generateCode() {
    return '''
        EdgeInsets.only(
        left: ${left ?? 0.0},
        top: ${top ?? 0.0},
        right: ${right ?? 0.0},
        bottom: ${bottom ?? 0.0})
      ''';
  }
}
