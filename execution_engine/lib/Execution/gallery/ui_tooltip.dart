import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'custom_widgets/ui_box_decoration.dart';
import 'custom_widgets/ui_text_style.dart';
part 'ui_tooltip.g.dart';

class UITooltip extends UIWidget {
  // UIWidget? child;

  double? left;
  double? top;
  double? right;
  double? bottom;
  double? verticalOffset;
  UIBoxDecoration? decoration;
  UITextStyle? textStyle;
  String message = '';

  UITooltip({
    Key? key,
  }) : super(key: key, hasChildren: false, isContainer: true, hasChild: true) {
    this.class_name = "UITooltip";
  }
  UITooltip.name({
    Key? key,
  }) : super(key: key, hasChildren: false, isContainer: true, hasChild: true) {
    class_name = "UITooltip";
  }

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    // double ratio = MediaQuery.of(context).size.width /
    //     (templateWidth ?? MediaQuery.of(context).size.width);

    Widget widget = Tooltip(
      verticalOffset: verticalOffset,
      message: message,
      padding: EdgeInsets.only(
        left: left != null ? left! : 0.0,
        top: top != null ? top! : 0.0,
        right: right != null ? right! : 0.0,
        bottom: bottom != null ? bottom! : 0.0,
      ),
      decoration: decoration != null ? decoration!.property() : null,
      textStyle: textStyle != null ? textStyle!.property() : null,
      child: child != null ? child!.widget() : null,
    );

    return widget;
  }

  factory UITooltip.fromJson(Map<String, dynamic> json) {
    return _$UITooltipFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UITooltipToJson(this);
  }

}
