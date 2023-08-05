import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_box_shadow.g.dart';

List<String> _blurStyle = ['inner', 'normal', 'outer', 'solid'];

@JsonSerializable(explicitToJson: true)
class UIBoxShadow {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;
  String class_name = 'UIBoxShadow';
  int? color = Colors.grey.value;

  double? offsetX;
  double? offsetY = 2;
  double? spreadRadius;
  double? blurRadius = 4;
  String? blurStyle;

  UIBoxShadow({this.widget});

  TextEditingController blurController = TextEditingController(text: '4');
  TextEditingController spreadController = TextEditingController(text: '0');
  TextEditingController offsetXController = TextEditingController(text: '0');
  TextEditingController offsetYController = TextEditingController(text: '2');

  BoxShadow property() {
    return BoxShadow(
      offset: Offset(offsetX != null ? offsetX! : 0, offsetY != null ? offsetY! : 0),
      color: Color(color!),
      spreadRadius: spreadRadius ?? 0,
      blurRadius: blurRadius ?? 0,
      blurStyle: blurStyle != null ? BlurStyle.values[_blurStyle.indexOf(blurStyle!)] : BlurStyle.normal,
    );
  }

  factory UIBoxShadow.fromJson(Map<String, dynamic> json) {
    var wid = _$UIBoxShadowFromJson(json);
    wid.blurController.text = wid.blurRadius != null ? '${wid.blurRadius}' : '4';
    wid.spreadController.text = wid.spreadRadius != null ? '${wid.spreadRadius}' : '0';
    wid.offsetXController.text = wid.offsetX != null ? '${wid.offsetX}' : '0';
    wid.offsetYController.text = wid.offsetY != null ? '${wid.offsetY}' : '2';
    return wid;
  }

  Map<String, dynamic> toJson() {
    return _$UIBoxShadowToJson(this);
  }
}
