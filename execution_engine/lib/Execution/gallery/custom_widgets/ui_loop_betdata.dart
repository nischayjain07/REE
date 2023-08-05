import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_loop_betdata.g.dart';

@JsonSerializable(explicitToJson: true)
class UILoopBetData extends UIWidget {
  /*  UILoopBetData(this.loopwidget);

  UIWidget loopwidget;

  List<UIWidget> widget() {
    List<UIWidget> wL = List.empty(growable: true);

    for (int i = 0; i < 10; i++) {
      wL.add(
        loopwidget.children.first()
      );
    }

    return wL;
  } */

  UIBoxDecoration? decoration;

  // UIWidget? child;

  UILoopBetData({Key? key})
      : super(key: key, isContainer: true, hasChildren: false) {
    this.class_name = "UILoopBetData";
  }

  UILoopBetData.name({Key? key})
      : super(key: key, hasChildren: false, isContainer: true) {
    this.class_name = "UILoopBetData";
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Container(
      key: widgetKey,
      width: size,
      height: size1,
      // child: children.isNotEmpty ? children[0].widget() : null,
      child: child != null ? child!.widget() : null,
      decoration: decoration != null ? decoration!.property() : null,
//       decoration: BoxDecoration(
// border: Border(
//   left: BorderSide( color: Colors.black, style: BorderStyle.solid, width: 12.0 ,strokeAlign: 12.0)
// )

//       ) ,
    );
    return widget;
  }

  factory UILoopBetData.fromJson(Map<String, dynamic> json) =>
      _$UILoopBetDataFromJson(json);

  Map<String, dynamic> toJson() {
    this.class_name = "UILoopBetData";
    return _$UILoopBetDataToJson(this);
  }
}
