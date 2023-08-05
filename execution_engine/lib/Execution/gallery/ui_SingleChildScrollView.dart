import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'ui_SingleChildScrollView.g.dart';

List<String> _scrollDirection = ['horizontal', 'vertical'];
List<String> _clipBehavior = ['antiAlias', 'antiAliasWithSaveLayer', 'hardEdge', 'none'];

class UISingleChildScrollView extends UIWidget {
  double width = 100;
  double height = 50;
  bool scrollDirection = true;

  String? clipBehavior;

  UISingleChildScrollView({Key? key}) : super(key: key, isContainer: true, hasChildren: false, hasChild: true) {
    class_name = "UISingleChildScrollView";
  }

  UISingleChildScrollView.name({Key? key}) : super(key: key, hasChildren: false, isContainer: true, hasChild: true) {
    class_name = "UISingleChildScrollView";
  }

  TextEditingController _heightController = TextEditingController(text: '50');
  TextEditingController _widthController = TextEditingController(text: '100');

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Container(
      key: widgetKey,
      height: height,
      width: width,
      child: SingleChildScrollView(
        scrollDirection: scrollDirection ? Axis.vertical : Axis.horizontal,
        clipBehavior: clipBehavior != null ? Clip.values[_clipBehavior.indexOf(clipBehavior!)] : Clip.hardEdge,
        child: child != null ? child!.widget(hoveredWidget: hoveredWidget, selectedWidget: selectedWidget) : null,
      ),
    );

    return widget;
  }

  factory UISingleChildScrollView.fromJson(Map<String, dynamic> json) => _$UISingleChildScrollViewFromJson(json);

  Map<String, dynamic> toJson() {
    this.class_name = "UISingleChildScrollView";
    return _$UISingleChildScrollViewToJson(this);
  }
}
