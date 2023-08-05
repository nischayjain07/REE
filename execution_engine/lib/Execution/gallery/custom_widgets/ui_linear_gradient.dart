import 'dart:math';

import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:json_annotation/json_annotation.dart';


part 'ui_linear_gradient.g.dart';

List<String> _tileMode = ['clamp', 'decal', 'mirror', 'repeated'];

@JsonSerializable(explicitToJson: true)
class UILinearGradient {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;
  String class_name = 'LinearGradient';

  final textController = TextEditingController(text: '#2F19DB');
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<List> colors = [
    ['0xffb74093', 0, TextEditingController(text: '0xffb74093'), TextEditingController(text: '0')],
    ['0xff5cdbc4', 0.5, TextEditingController(text: '0xff5cdbc4'), TextEditingController(text: '0.5')]
  ];

  double? x, y;
  String tileMode = 'clamp';
  double? transform;

  UILinearGradient({this.widget}) {
    x = 0;
    y = -1;
  }

  TextEditingController _angleController = TextEditingController(text: '0');

  LinearGradient? property() {
    return LinearGradient(
        colors: [...colors.map((c) => Color(int.parse(c[0])))],
        begin: AlignmentDirectional(x!, y!),
        end: AlignmentDirectional(-1 * x!, -1 * y!),
        stops: [...colors.map((c) => c[1])],
        tileMode: TileMode.values[_tileMode.indexOf(tileMode)],
        transform: transform != null ? GradientRotation(transform!) : null);
  }

  factory UILinearGradient.fromJson(Map<String, dynamic> json) {
    return _$UILinearGradientFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UILinearGradientToJson(this);
  }

  String? generateCode() {
    return '''
      LinearGradient(
        colors: ${[...colors.map((c) => Color(int.parse(c[0])))]},
        begin: AlignmentDirectional(${x!}, ${y!}),
        end: AlignmentDirectional(-1 * ${x!}, -1 * ${y!}),
        stops: ${[...colors.map((c) => c[1])]},
        tileMode: ${TileMode.values[_tileMode.indexOf(tileMode)]},
        transform: ${transform != null ? GradientRotation(transform!) : null})''';
  }
}
