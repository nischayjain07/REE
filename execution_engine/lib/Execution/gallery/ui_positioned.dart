import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';

class UIPositioned extends UIWidget {
  Color? color;
  Decoration? decoration;
  // double width = 100;
  // double height = 100;
  //UIWidget? child;

  UIPositioned({Key? key})
      : super(key: key, isContainer: true, hasChildren: false) {
    this.class_name = "UIStack";
  }

  UIPositioned.name({Key? key})
      : super(key: key, hasChildren: false, isContainer: true) {
    this.class_name = "UIStack";
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Positioned(
      key: widgetKey,
      width: 1,
      height: 1,
      left: 1,
      top: 1,
      right: 1,
      bottom: 1,
      child: children[0].widget(),
    );

    return widget;
  }
}
