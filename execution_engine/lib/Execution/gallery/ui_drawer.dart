import 'package:execution_engine/Execution/gallery/ui_widget.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'ui_drawer.g.dart';

@JsonSerializable(explicitToJson: true)
class UIDrawer extends UIWidget {
  int? bgColor;
  double? elevation;
  double? width;

  UIDrawer({Key? key}) : super(key: key, isContainer: true, hasChildren: true) {
    class_name = "UIDrawer";
  }
  UIDrawer.name({Key? key})
      : super(key: key, hasChildren: true, isContainer: true) {
    class_name = "UIDrawer";
  }

  @override
  Widget widget({
    UIWidget? selectedWidget,
    UIWidget? hoveredWidget,
  }) {
    return Drawer(
        key: widgetKey,
        backgroundColor: bgColor == null ? null : Color(bgColor!),
        elevation: elevation,
        width: width,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
        ),
        child: Text(''));
  }

  @override
  Widget propertySheet() {
    // TODO: implement propertySheet
    throw UnimplementedError();
  }

  @override
  add(UIWidget widget) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  remove(UIWidget widget) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  select() {
    // TODO: implement select
    throw UnimplementedError();
  }

  @override
  String generateCode() {
    return '''
      Drawer(
      
    )
    ''';
  }

  factory UIDrawer.fromJson(Map<String, dynamic> json) =>
      _$UIDrawerFromJson(json);

  @override
  Map<String, dynamic> toJson() {
    class_name = "UIDrawer";
    return _$UIDrawerToJson(this);
  }
}
