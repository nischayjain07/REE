import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'ui_expanded.g.dart';

class UIExpanded extends UIWidget {
  Decoration? decoration;
  int flex = 1;

  UIExpanded({Key? key, int? flex}) : super(key: key, isContainer: true, hasChildren: false, hasChild: true) {
    class_name = "UIExpanded";
  }

  UIExpanded.name({Key? key, int? flex}) : super(key: key, isContainer: true, hasChildren: false, hasChild: true) {
    class_name = "UIExpanded";
  }

  final TextEditingController _flexController = TextEditingController(text: '1');

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Expanded(
        key: widgetKey,
        flex: flex,
        child: children.isNotEmpty
            ? children[0].widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget)
            : Text('Drop a widget here'));

    return widget;
  }

  Map<String, dynamic> toJson() {
    return _$UIExpandedToJson(this);
  }

  factory UIExpanded.fromJson(Map<String, dynamic> json) {
    var wid = _$UIExpandedFromJson(json);
    return wid;
  }
}
