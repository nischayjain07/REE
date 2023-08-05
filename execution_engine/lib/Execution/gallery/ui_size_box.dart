import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'ui_size_box.g.dart';

class UISizeBox extends UIWidget {
  double? width = 30;
  double? height = 30;

  bool? isFixedWidth = true;
  bool? isFixedHeight = true;

  var color = 0xFF000000;

  // double thickness = 3;
  double indent = 0;
  double endIndent = 0;

  final TextEditingController _widthController = TextEditingController(text: '30');
  final TextEditingController _heightController = TextEditingController(text: '30');

  UISizeBox({Key? key}) : super(key: key, isContainer: true, hasChildren: false, hasChild: true) {
    this.class_name = "UISizeBox";
  }

  UISizeBox.name({Key? key, double? width, double? height})
      : super(key: key, hasChildren: false, isContainer: true, hasChild: true) {
    this.class_name = "UISizeBox";
    if (width != null) this.width = width;
    if (height != null) this.height = height;
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Container(
      key: widgetKey,
      padding: EdgeInsets.all(2),
      // width: child == null ? 50 : null,
      // height: child == null ? 40 : null,
      child: child?.widget(),
    );

    return widget;
  }

  factory UISizeBox.fromJson(Map<String, dynamic> json) => _$UISizeBoxFromJson(json);

  Map<String, dynamic> toJson() {
    this.class_name = "UISizeBox";
    return _$UISizeBoxToJson(this);
  }
}
