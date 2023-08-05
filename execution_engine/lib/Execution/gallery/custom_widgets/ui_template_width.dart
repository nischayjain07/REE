import 'package:execution_engine/Execution/gallery/gallery.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ui_template_width.g.dart';

@JsonSerializable(explicitToJson: true)
class UITemplateWidth extends UIWidget {
  // String color = '0xffb74093';

  // Decoration? decoration;
  double? width; //= 100;
  double? height; // = 100;
  // UIWidget? child;

  double templateWidth = 250;
  double templateHeight = 50;

  UITemplateWidth({Key? key})
      : super(key: key, isContainer: true, hasChildren: false, hasChild: true) {
    this.class_name = "UITemplateWidth";
    templateWidth = 200; // TODO
    templateHeight = 50;
  }

  UITemplateWidth.name({Key? key})
      : super(key: key, hasChildren: false, isContainer: true, hasChild: true) {
    this.class_name = "UITemplateWidth";
    // ignore: todo
    templateWidth = 200; // TODO
    templateHeight = 50;
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    Widget widget = Container(
      key: widgetKey,
      decoration:
          BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
      // child: children.isNotEmpty ? children[0].widget() : null,
      child: child?.widget(),
    );

    return widget;
  }

  factory UITemplateWidth.fromJson(Map<String, dynamic> json) {
    return _$UITemplateWidthFromJson(json);
  }
  Map<String, dynamic> toJson() {
    this.class_name = "UITemplateWidth";
    return _$UITemplateWidthToJson(this);
  }

}
