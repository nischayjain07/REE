import 'package:execution_engine/Execution/gallery/dynamic_list_of_widget.dart';
import 'package:execution_engine/Execution/gallery/ui_stack.dart';
import 'package:flutter/material.dart';

import 'gallery.dart';

part 'ui_widget.g.dart';

class UIWidget {
  final bool isContainer;
  final bool hasChildren;
  final bool hasChild;
  final GlobalKey widgetKey = GlobalKey();
  double offset = 0;
  double offset1 = 0;
  double? size = 50;
  double? size1 = 50;
  String class_name = '';
  List<UIWidget> children = List.empty(growable: true);

  UIWidget? child;
  UIScaffold? rootWidget; // accessed by each and every widget in the tree
  UIWidget? parent;
  String linkedPage = '';
  void Function()? onPressed;
  List<Widget>? generatedChildren = [];
  int? generatedChildrenIndex;
  String? keyValue;
  String? keyForValue;

  // // Solution Design
  // NslAttributes? nslAttribute;
  // ParticipatingItem? participatingItem;

  UIWidget({Key? key, this.isContainer = false, this.hasChildren = false, this.hasChild = false});

  List<Widget> getRunTimeWidgetList(UIWidget? selectedWidget, UIWidget? hoveredWidget) {
    List<Widget> newWidgetList = [];
    for (int index = 0; index < children.length; index++) {
      if (children[index] != null) (children[index].keyValue = keyValue);
      if (children[index] is DynamicListOfWidget) {
        newWidgetList.addAll(children[index].widgetList(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget));
      } else {
        newWidgetList.add(children[index].widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget));
      }
    }
    return newWidgetList;
  }

  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    // TODO: implement widget
    throw UnimplementedError();
  }

  List<Widget> widgetList({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    // TODO: implement widget
    throw UnimplementedError();
  }

    isMultiChildWidget(UIWidget widget) {
    if (widget is UIColumn ||
        widget is UIRow ||
        widget is UIGridView ||
        widget is UIListView ||
        widget is UIStack ||
        widget is UIScaffold) {
      return true;
    }
    return false;
  }

  static Map<String, Function> widgets = Mapped.widgets;
  factory UIWidget.fromJson(Map<String, dynamic> json) {
    if (json['offset'] == null || json['offset1'] == null) {
      json['offset'] = 0;
      json['offset1'] = 0;
    }
    if (json['children'] == null) {
      json['children'] = [];
    }
    return widgets[json['class_name']]!(json);
  }
  Map<String, dynamic> toJson() {
    class_name = runtimeType.toString();
    return _$UIWidgetToJson(this);
  }
}
