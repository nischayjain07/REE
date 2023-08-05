import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'ui_box_constraints.g.dart';

@JsonSerializable(explicitToJson: true)
class UIBoxConstraints {
  @JsonKey(includeFromJson: false, includeToJson: false)
  UIWidget? widget;
  String class_name = 'UIBoxConstraints';
  bool isBoxConstraints;
  bool isBoxConstraintsVisible = true;
  double? minWidth;
  double? maxWidth;
  double? minHeight;
  double? maxHeight;

  UIBoxConstraints(
      {required this.isBoxConstraints, this.minWidth, this.maxWidth, this.minHeight, this.maxHeight, this.widget}) {
    minHeight ??= 0;
    minWidth ??= 0;
    maxWidth ??= null;
    maxHeight ??= null;
  }

  TextEditingController minWidthController = TextEditingController(text: '');
  TextEditingController maxWidthController = TextEditingController(text: '');
  TextEditingController minHeightController = TextEditingController(text: '');
  TextEditingController maxHeightController = TextEditingController(text: '');

  BoxConstraints? property() {
    if (!isBoxConstraints) {
      return null;
    }
    return BoxConstraints(
        minWidth: minWidth ?? 0,
        maxWidth: maxWidth ?? double.infinity,
        minHeight: minHeight ?? 0,
        maxHeight: maxHeight ?? double.infinity);
  }

  factory UIBoxConstraints.fromJson(Map<String, dynamic> json) {
    var wid = _$UIBoxConstraintsFromJson(json);
    wid.minHeightController.text = wid.minHeight != null ? '${wid.minHeight}' : '';
    wid.maxHeightController.text = wid.maxHeight != null ? '${wid.maxHeight}' : '';
    wid.minWidthController.text = wid.minWidth != null ? '${wid.minWidth}' : '';
    wid.maxWidthController.text = wid.maxWidth != null ? '${wid.maxWidth}' : '';
    return wid;
  }

  Map<String, dynamic> toJson() {
    return _$UIBoxConstraintsToJson(this);
  }
}
