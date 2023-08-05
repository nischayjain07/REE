import 'dart:math';

import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

part 'ui_column.g.dart';

List<String> _mainAxisAlignment = ['end', 'start', 'center', 'spaceBetween', 'spaceAround', 'spaceEvenly'];

List<String> _crossAxisAlignment = ['start', 'end', 'center', 'stretch', 'baseline'];

List<String> _mainAxisSize = ['max', 'min'];

List<String> _textDirection = ['rtl', 'ltr'];

List<String> _verticalDirection = ['down', 'up'];

class UIColumn extends UIWidget {
  // @JsonValue(MainAxisAlignment.center)
  // MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start;
  String? mainAxisAlignment;
  // mainAxisAlignment!= null? MainAxisAlignment.values[_mainAxisAlignment.indexOf(mainAxisAlignment!)] : null

  // @JsonValue(CrossAxisAlignment.center)
  // CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center;

  String? crossAxisAlignment;

  // MainAxisSize mainAxisSize = MainAxisSize.max;
  // TextDirection textDirection = TextDirection.ltr;
  // VerticalDirection verticalDirection = VerticalDirection.down;

  String? mainAxisSize;
  String? textDirection;
  String? verticalDirection;

  UIColumn() : super(isContainer: true, hasChildren: true) {
    // mainAxisAlignment = MainAxisAlignment.center;
    // crossAxisAlignment = CrossAxisAlignment.center;

    class_name = "UIColumn";
  }
  UIColumn.name({Key? key}) : super(key: key, hasChildren: true, isContainer: true) {
    class_name = "UIColumn";
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    List<Widget> newWidgetList = getRunTimeWidgetList(selectedWidget, hoveredWidget);

    Widget widget = Column(
      key: widgetKey,
      mainAxisAlignment: mainAxisAlignment != null
          ? MainAxisAlignment.values[_mainAxisAlignment.indexOf(mainAxisAlignment!)]
          : MainAxisAlignment.start,
      crossAxisAlignment: crossAxisAlignment != null
          ? CrossAxisAlignment.values[_crossAxisAlignment.indexOf(crossAxisAlignment!)]
          : CrossAxisAlignment.start,
      mainAxisSize:
          mainAxisSize != null ? MainAxisSize.values[_mainAxisSize.indexOf(mainAxisSize!)] : MainAxisSize.max,
      textDirection: textDirection != null ? TextDirection.values[_textDirection.indexOf(textDirection!)] : null,
      verticalDirection: verticalDirection != null
          ? VerticalDirection.values[_verticalDirection.indexOf(verticalDirection!)]
          : VerticalDirection.down,
      children: newWidgetList,
      // children: children.map((e) {
      //   if (e != null) (e!.keyValue = keyValue);
      //   return e.widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget);
      // }).toList(),
    );
    return widget;
  }

  Map<String, dynamic> toJson() {
    return _$UIColumnToJson(this);
  }

  factory UIColumn.fromJson(Map<String, dynamic> json) {
    var wid = _$UIColumnFromJson(json);
    return wid;
  }
}
