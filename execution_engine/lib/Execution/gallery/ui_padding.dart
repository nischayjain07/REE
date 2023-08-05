import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'ui_padding.g.dart';

class UIPadding extends UIWidget {
  // UIWidget? child;
  // UIPadding({required this.wid});
  UIPadding({Key? key}) : super(key: key, hasChildren: false, isContainer: true, hasChild: true) {
    this.class_name = "UIPadding";
  }

  // UIPadding.name({Key? key, required this.wid})
  UIPadding.name({Key? key}) : super(key: key, hasChildren: false, isContainer: true, hasChild: true) {
    this.class_name = "UIPadding";
  }

  final paddingList = List<double>.filled(4, 0);
  bool paddingLock = false;

  final TextEditingController paddingL_controller = TextEditingController(text: "0");
  final TextEditingController paddingR_controller = TextEditingController(text: "0");
  final TextEditingController paddingT_controller = TextEditingController(text: "0");
  final TextEditingController paddingB_controller = TextEditingController(text: "0");

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Padding(
      key: widgetKey,
      padding: const EdgeInsets.only(left: 1, right: 1, bottom: 1, top: 1),
      // child: children.isEmpty ? null : children[0].widget(),
      child: child?.widget(),
    );

    return widget;
  }

  static UIPadding fromJson(Map<String, dynamic> json) {
    var wid = _$UIPaddingFromJson(json);
    if (wid.paddingList.length == 4) {
      wid.paddingL_controller.text = '${wid.paddingList[0]}';
      wid.paddingT_controller.text = '${wid.paddingList[1]}';
      wid.paddingR_controller.text = '${wid.paddingList[2]}';
      wid.paddingB_controller.text = '${wid.paddingList[3]}';
    }
    return wid;
  }
}
