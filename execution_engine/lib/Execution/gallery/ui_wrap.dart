import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';

const _axis = ['horizontal', 'vertical'];

class UIWrap extends UIWidget {
  String? direction;

  UIWrap({Key? key}) : super(key: key, isContainer: true, hasChildren: false) {
    this.class_name = "UIWrap";
  }

  UIWrap.name({Key? key})
      : super(key: key, hasChildren: true, isContainer: true) {
    this.class_name = "UIWrap";
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Wrap(
      key: widgetKey,
      direction: direction != null
          ? Axis.values[_axis.indexOf(direction!)]
          : Axis.horizontal,
//  verticalDirection: ,
//       alignment: ,
//  crossAxisAlignment: ,
//       runAlignment: ,
//  spacing: ,
//  runSpacing: ,
      children: children
          .map((e) => e.widget(
              selectedWidget: selectedWidget, hoveredWidget: hoveredWidget))
          .toList(),
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

  // @override
  // String generateCode() {
  //   return '''
  //   Wrap(
  //     ${direction != null ? 'direction: ${Axis.values[_axis.indexOf(direction!)]},' : ''}
  //     children: ${children.map((e) => e.generateCode()).toList()}
  //   )
  //   ''';
  // }
}
