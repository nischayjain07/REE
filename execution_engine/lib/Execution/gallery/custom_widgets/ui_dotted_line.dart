import 'package:dotted_line/dotted_line.dart';
import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';

class UIDottedLine extends UIWidget {
  Color color = Color(int.parse('#1C3EAF26'));
  Decoration? decoration;
  double width = 100;
  double height = 100;
  UIWidget? child;

  UIDottedLine({Key? key})
      : super(key: key, isContainer: false, hasChildren: false) {
    this.class_name = "UIDottedLine";
  }

  UIDottedLine.name({Key? key})
      : super(key: key, hasChildren: false, isContainer: true) {
    this.class_name = "UIDottedLine";
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = DottedLine(
      key: widgetKey,
      direction: Axis.vertical,
      lineLength: double.infinity,
      lineThickness: 4.0,
      dashLength: 4.0,
      dashColor: color,
      dashRadius: 2.0,
      dashGapLength: 4.0,
      dashGapColor: Colors.transparent,
      dashGapRadius: 0.0,
    );

    return widget;
  }

}
