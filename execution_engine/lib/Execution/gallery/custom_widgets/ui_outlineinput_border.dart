import 'package:execution_engine/Execution/gallery/custom_widgets/ui_border_radius.dart';
import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_outlineinput_border.g.dart';

@JsonSerializable(explicitToJson: true)
class UIOutlineInputBorder {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;
  String class_name = 'UIOutlineInputBorder';
  double? borderRadius;
  double? borderSideWidth = 2;
  String? borderSideColor;
  bool isOutlineBorder = false;
  bool isBorderPropertyVisible = true;
  String? labelText = '';
  UIBorderRadius? borderRadiusWidget;
  TextEditingController widthController = TextEditingController(text: '2');

  UIOutlineInputBorder(
      {required this.isOutlineBorder,
      this.labelText,
      this.borderRadius,
      this.borderSideWidth = 2,
      this.borderSideColor,
      this.widget}) {
    borderRadiusWidget = UIBorderRadius(radius: borderRadius);
    widthController.text = '$borderSideWidth';
  }

  OutlineInputBorder? property() {
    if (!isOutlineBorder) {
      return null;
    }
    return OutlineInputBorder(
      borderRadius: borderRadiusWidget!.property()!,
      borderSide: BorderSide(
        width: borderSideWidth ?? 2.0,
        color: borderSideColor != null ? Color(int.parse(borderSideColor!)) : Colors.grey,
      ),
    );
  }

  factory UIOutlineInputBorder.fromJson(Map<String, dynamic> json) {
    var wid = _$UIOutlineInputBorderFromJson(json);
    wid.widthController.text = wid.borderSideWidth != null ? '${wid.borderSideWidth}' : '2';
    return wid;
  }

  Map<String, dynamic> toJson() {
    return _$UIOutlineInputBorderToJson(this);
  }
}
