import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'ui_VerticalDivider.g.dart';

class UIVerticalDivider extends UIWidget {
  var color = 0xFF000000;
  double thickness = 1;
  double width = 1;
  double height = 25;
  double indent = 0;
  double endIndent = 0;
  int? indexWherePlaced; // only for root divider
  bool? replaceError; // only for root divider

  final TextEditingController _thicknessController = TextEditingController(text: '0');
  final TextEditingController _widthController = TextEditingController(text: '1');
  final TextEditingController _heightController = TextEditingController(text: '1');
  final TextEditingController _indentController = TextEditingController(text: '0');
  final TextEditingController _endIndentController = TextEditingController(text: '0');

  UIVerticalDivider({Key? key}) : super(key: key, isContainer: false, hasChildren: false, hasChild: false) {
    class_name = "UIVerticalDivider";
  }

  UIVerticalDivider.name({Key? key}) : super(key: key, isContainer: false, hasChildren: false, hasChild: false) {
    class_name = "UIVerticalDivider";
  }

  factory UIVerticalDivider.fromJson(Map<String, dynamic> json) => _$UIVerticalDividerFromJson(json);

  Map<String, dynamic> toJson() {
    class_name = "UIVerticalDivider";
    return _$UIVerticalDividerToJson(this);
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = SizedBox(
      height: height,
      child: VerticalDivider(
        key: widgetKey,
        color: Color(color),
        thickness: thickness,
        width: width,
        indent: indent,
        endIndent: endIndent,
      ),
    );

    return widget;
  }
}
