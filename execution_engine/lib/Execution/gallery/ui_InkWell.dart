import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_InkWell.g.dart';

@JsonSerializable(explicitToJson: true)
class UIInkWell extends UIWidget {
  double width = 50;
  double height = 50;

  UIInkWell({Key? key}) : super(key: key, isContainer: true, hasChildren: false, hasChild: true) {
    class_name = "UIInkWell";
  }

  UIInkWell.name({Key? key}) : super(key: key, hasChildren: false, isContainer: true, hasChild: true) {
    class_name = "UIInkWell";
  }

  TextEditingController _heightController = TextEditingController(text: '50');
  TextEditingController _widthController = TextEditingController(text: '50');

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Container(
        key: widgetKey,
        width: width,
        height: height,
        child: InkWell(
          onTap: onPressed,
          child: Center(child: child?.widget(hoveredWidget: hoveredWidget, selectedWidget: selectedWidget)),
        ));

    return widget;
  }

  factory UIInkWell.fromJson(Map<String, dynamic> json) => _$UIInkWellFromJson(json);

  Map<String, dynamic> toJson() {
    class_name = "UIInkWell";
    return _$UIInkWellToJson(this);
  }
}
