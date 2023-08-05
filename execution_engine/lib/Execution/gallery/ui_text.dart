import 'dart:convert';

import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'custom_widgets/ui_text_style.dart';
part 'ui_text.g.dart';

var _overflow = ['clip', 'fade', 'ellipsis', 'visible', 'none'];

class UIText extends UIWidget {
  String? value = 'Default Text';
  int? textAlign = TextAlign.left.index;
  int? fontStyle = FontWeight.normal.index;
  int titleD = 0;
  int titleD1 = FontStyle.normal.index;
  String? dynamicText = 'Dynamic Text';
  int? maxLines;

  String? overflow;
  UITextStyle? textStyle;

  final TextEditingController _valueController = TextEditingController(text: 'Default Text');
  final TextEditingController _maxLinesController = TextEditingController(text: '1');

  initialize() {
    class_name = "UIText";
    textStyle ??= UITextStyle(widget: this);
    overflow ??= 'none';
    maxLines ??= 1;
  }

  UIText({Key? key, String? text}) : super(key: key, hasChildren: false, isContainer: false, hasChild: false) {
    initialize();
  }

  UIText.name({Key? key, String? text}) : super(key: key, hasChildren: false, isContainer: false, hasChild: false) {
    initialize();
    if (text != null) {
      value = text;
      _valueController.text = text;
    }
    class_name = "UIText";
    textStyle ??= UITextStyle(widget: this);
  }

  factory UIText.fromJson(Map<String, dynamic> json) {
    var wid = _$UITextFromJson(json);
    wid._valueController.text = wid.value != null ? '${wid.value}' : 'Default Text';
    wid._maxLinesController.text = wid.maxLines != null ? '${wid.maxLines}' : '1';
    return wid;
  }

  Map<String, dynamic> toJson() {
    class_name = "UIText";
    var json = _$UITextToJson(this);
    return json;
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Text(
      (keyValue!= null && keyForValue != null && keyValue!.contains(keyForValue!)) ? json.decode(keyValue!)[keyForValue] : value ?? '',
      key: widgetKey,
      textAlign: textAlign != null ? TextAlign.values[textAlign!] : null,
      overflow: overflow != null && overflow != 'none' ? TextOverflow.values[_overflow.indexOf(overflow!)] : null,
      style: textStyle!.property(),
      maxLines: maxLines ?? 1,
    );

    return widget;
  }
}
