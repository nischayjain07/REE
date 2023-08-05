import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'colorPicker.g.dart';

@JsonSerializable(explicitToJson: true)
class UIColorPickerWidget {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;
  final String title;
  UIColorPickerWidget({required this.title, this.color, this.widget}) {
    color ??= Colors.black.value;
  }
  int? color = Colors.black.value;

  factory UIColorPickerWidget.fromJson(Map<String, dynamic> json) => _$UIColorPickerWidgetFromJson(json);
  Map<String, dynamic> toJson() => _$UIColorPickerWidgetToJson(this);

  // Widget colorPicker() {
  //   return UIColorPicker(
  //     pickerColor: color != null ? Color(color!) : Colors.black,
  //     onColorChanged: (colorChanged) {
  //       color = colorChanged.value;
  //       refreshPage(widget: widget);
  //     },
  //   );
  // }
}
