import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';

part 'ui_stack.g.dart';

class UIStack extends UIWidget {
  // double width = 100;
  // double height = 100;
  //UIWidget? child;

  UIStack({Key? key}) : super(key: key, isContainer: true, hasChildren: true) {
    this.class_name = "UIStack";
  }

  UIStack.name({Key? key}) : super(key: key, hasChildren: true, isContainer: true) {
    this.class_name = "UIStack";
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Stack(
      key: widgetKey,
      /* alignment: ,
      clipBehavior: ,
      fit: ,
      textDirection: , */

      children: children.map((e) => e.widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget)).toList(),
    );

    return widget;
  }

  factory UIStack.fromJson(Map<String, dynamic> json) => _$UIStackFromJson(json);

  Map<String, dynamic> toJson() {
    this.class_name = "UIStack";
    return _$UIStackToJson(this);
  }
}
