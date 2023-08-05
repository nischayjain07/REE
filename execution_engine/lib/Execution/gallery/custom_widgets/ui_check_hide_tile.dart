import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_check_hide_tile.g.dart';

@JsonSerializable(explicitToJson: true)
class UICheckHideTitle extends UIWidget {
  // Color? color;

  // double width = 100;
  // double height = 100;
  //UIWidget? child;

  // UIWidget? child;

  UICheckHideTitle({Key? key})
      : super(key: key, isContainer: true, hasChildren: false) {
    this.class_name = "UIContainer";
  }

  UICheckHideTitle.name({Key? key})
      : super(key: key, hasChildren: false, isContainer: true) {
    this.class_name = "UIContainer";
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Container(
        key: widgetKey,
        width: size,
        height: size1,
        // child: children.isNotEmpty ? children[0].widget() : null,
        child: child?.widget()
//       decoration: BoxDecoration(
// border: Border(
//   left: BorderSide( color: Colors.black, style: BorderStyle.solid, width: 12.0 ,strokeAlign: 12.0)
// )

//       ) ,
        );
    return widget;
  }

  @override
  Widget propertySheet() {
    // TODO: implement propertySheet
    // throw UnimplementedError();
    return ListView();
  }

  @override
  add(UIWidget widget) {
    children.clear();
    children.add(widget);
    //child = widget;
  }

  @override
  remove(UIWidget widget) {
    //child=null;
    children.clear();
  }

  @override
  select() {
    // TODO: implement select
    throw UnimplementedError();
  }

  factory UICheckHideTitle.fromJson(Map<String, dynamic> json) =>
      _$UICheckHideTitleFromJson(json);

  Map<String, dynamic> toJson() {
    return _$UICheckHideTitleToJson(this);
  }
}
