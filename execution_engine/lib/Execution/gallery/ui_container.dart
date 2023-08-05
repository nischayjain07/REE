import 'package:execution_engine/Execution/gallery/components/margin.dart';
import 'package:execution_engine/Execution/gallery/components/padding.dart';
import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/services.dart';

import 'custom_widgets/ui_box_decoration.dart';

part 'ui_container.g.dart';

@JsonSerializable(explicitToJson: true)
class UIContainer extends UIWidget {
  UIBoxDecoration? decoration;
  UIPadding? padding;
  UIMargin? margin;
  double? width;
  bool? isFixedWidth = true;
  double? height;
  bool? isFixedHeight = true;

  initialize() {
    class_name = "UIContainer";
    decoration ??= UIBoxDecoration(widget: this);
    width ??= 40;
    padding ??= UIPadding(initPadding: 2, widget: this);
    margin ??= UIMargin(initMargin: 0, widget: this);
    height ??= 40;
  }

  UIContainer({Key? key}) : super(key: key, isContainer: true, hasChildren: false, hasChild: true) {
    initialize();
  }

  UIContainer.name({Key? key}) : super(key: key, hasChildren: false, isContainer: true, hasChild: true) {
    initialize();
  }

  final TextEditingController _heightController = TextEditingController(text: '40');
  final TextEditingController _widthController = TextEditingController(text: '');
  final _isOpen = List<bool>.filled(5, false);
  final _devices = List<bool>.filled(3, true);

  @override
  Widget widget({UIWidget? selectedWidget, UIWidget? hoveredWidget}) {
    if (child != null) (child!.keyValue = keyValue);
    Widget widget = Container(
      // width: (isFixedWidth == null || isFixedWidth!) ? width : (GlobalVariable.dWidth * width!) / 100,
      // height: (isFixedHeight == null || isFixedHeight!) ? height : (GlobalVariable.dHeight * height!) / 100,
      padding:
          padding != null ? EdgeInsets.fromLTRB(padding!.left, padding!.top, padding!.right, padding!.bottom) : null,
      margin: margin != null ? EdgeInsets.fromLTRB(margin!.left, margin!.top, margin!.right, margin!.bottom) : null,
      key: widgetKey,
      decoration: decoration!.property(),
      child: child != null ? child!.widget(selectedWidget: selectedWidget, hoveredWidget: hoveredWidget) : Container(),
    );
    return widget;
  }

 

  factory UIContainer.fromJson(Map<String, dynamic> json) {
    var wid = _$UIContainerFromJson(json);
    wid._heightController.text = wid.height != null ? '${wid.height}' : '40';
    wid._widthController.text = wid.width != null ? '${wid.width}' : '';
    return wid;
  }

  Map<String, dynamic> toJson() {
    var json = _$UIContainerToJson(this);
    return json;
  }
}
